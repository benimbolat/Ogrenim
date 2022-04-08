import 'package:flutter/material.dart';
import 'package:sqlite_on_kurulum/kisiler.dart';
import 'package:sqlite_on_kurulum/kisilerdao.dart';

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
  Future<void> kisileriGoster() async {
    var liste = await Kisilerdao().tumKisiler();

    for (Kisiler k in liste) {
      print("Kişi Adı : ${k.kisi_ad}");
      print("Kişi ID : ${k.kisi_id}");
      print("Kişi Yaşı : ${k.kisi_yas}");
    }
  }

  Future<void> ekle() async {
    await Kisilerdao().kisiEkle("Sedat", 37);
  }

  Future<void> sil() async {
    await Kisilerdao().kisiSil(4);
  }

  Future<void> guncelleme() async {
    await Kisilerdao().kisiGuncelleme(4, "Enes", 20);
  }

  Future<void> kayitKontrol() async {
    int sonuc = await Kisilerdao().kayitKontrol("ahmet");
    print("veri tabanında Ahmet sayısı : $sonuc");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ekle();
    // kisileriGoster();
    // sil();
    // kisileriGoster();
    // guncelleme();
    kayitKontrol();
    kisileriGoster();
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
          children: [],
        ),
      ),
    );
  }
}
