import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:httpkullanimi/Kisiler.dart';
import 'package:httpkullanimi/KisilerCevap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //parse methodu

  List<Kisiler> parseKisilerCevap(String cevap) {
    /*
    //! Uzun Hali
    var jsonVeri = json.decoder(cevap);
    var kisilerCevap = KisilerCevap.fromJson(jsonVeri);

    List<Kisiler> kisilerListesi = kisilerCevap.kisilerListesi;*/

    //! Kısa Hali
    return KisilerCevap.fromJson(jsonDecode(cevap)).kisilerListesi;
  }

  Future<List<Kisiler>> tumKisiler() async {
    var url = Uri.parse("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php");
    var cevap = await http.get(url);
    return parseKisilerCevap(cevap.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(""),
          ],
        ),
      ),
    );
  }
}
