import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_kullanimi/IkinciSayfa.dart';
import 'package:mobx_kullanimi/SayacModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var sayacModelNesne = SayacModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(builder: (_) {
              return Text(
                "${sayacModelNesne.sayac}",
                style: TextStyle(fontSize: 36),
              );
            }),
            ElevatedButton(
              child: Text("Geçiş Yap"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IkinciSayfa()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
