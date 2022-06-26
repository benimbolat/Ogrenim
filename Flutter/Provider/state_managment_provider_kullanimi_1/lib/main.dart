import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment_provider_kullanimi_1/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //---
    return ChangeNotifierProvider(
      create: (context) => MyCart(),
      //---
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Store(),
      ),
    );
  }
}

class Store extends StatelessWidget {
  final List<String> sepetListesi = ["Telefon", "Bilgisayar", "Klavye"];

  Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //---
    MyCart myCart = Provider.of<MyCart>(context);
    //---
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mağaza"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Cart(),
                    ));
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.builder(
        itemCount: sepetListesi.length,
        itemBuilder: (context, index) {
          String item = sepetListesi[index];
          return ListTile(
            title: Text(sepetListesi[index]),
            trailing: IconButton(
              icon: Icon(
                  myCart.list.contains(item) ? Icons.remove_shopping_cart_sharp : Icons.add_shopping_cart_outlined),
              onPressed: () {
                if (myCart.list.contains(item)) {
                  myCart.removeItem(item);
                } else {
                  myCart.list.add(sepetListesi[index]);
                }
              },
            ),
          );
        },
      ),
    );
  }
}

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //---
    MyCart myCart = Provider.of<MyCart>(context);
    //---
    return Scaffold(
      appBar: AppBar(
        title: const Text("Benim Sepetim"),
      ),
      body: ListView.builder(
        itemCount: myCart.list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(myCart.list[index]),
            trailing: IconButton(
                onPressed: () {
                  myCart.list.remove(myCart.list[index]);
                },
                icon: const Icon(Icons.remove_shopping_cart_sharp)),
          );
        },
      ),
    );
  }
}
