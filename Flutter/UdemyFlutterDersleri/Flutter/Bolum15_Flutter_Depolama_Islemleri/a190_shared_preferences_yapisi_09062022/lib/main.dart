import 'package:a190_shared_preferences_yapisi_09062022/sayfaA.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _adController = TextEditingController();
  final _yasController = TextEditingController();
  final _boyController = TextEditingController();

  Future<void> veriKaydi() async {
    var sp = await SharedPreferences.getInstance();
    sp.setString("ad", _adController.text);
    sp.setInt("yas", int.parse(_yasController.text));
    sp.setDouble("boy", double.parse(_boyController.text));
    sp.setBool("bekarmi", true);

    var arkadasListesi = <String>[];
    arkadasListesi.add("Furkan");
    arkadasListesi.add("Ahmet");
    arkadasListesi.add("Mustafa");

    sp.setStringList("arkadasListesi", arkadasListesi);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ana sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //* TextField
            ListTile(
              title: TextField(
                controller: _adController,
                decoration: const InputDecoration(labelText: "Ad"),
              ),
            ),
            ListTile(
              title: TextField(
                controller: _yasController,
                decoration: const InputDecoration(labelText: "yas (orn 23)"),
              ),
            ),
            ListTile(
              title: TextField(
                controller: _boyController,
                decoration: const InputDecoration(labelText: "boy (orn 1.65)"),
              ),
            ),

            //* Button
            ElevatedButton(
                onPressed: () {
                  veriKaydi();

                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaA()));
                },
                child: const Text("Geçiş Yap"))
          ],
        ),
      ),
    );
  }
}
