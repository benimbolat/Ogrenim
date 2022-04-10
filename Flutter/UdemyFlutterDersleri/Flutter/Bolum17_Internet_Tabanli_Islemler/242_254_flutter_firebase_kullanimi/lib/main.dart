import 'dart:collection';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_kullanimi/Kisiler.dart';

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
  var refKisiler = FirebaseDatabase.instance.ref().child("kisiler_ad");

  // Kişi Kayıt etme
  Future<void> kisiEkle() async {
    var bilgi = HashMap<String, dynamic>();
    bilgi["kisi_ad"] = "Ahmet";
    bilgi["kisi_yas"] = 99;
    refKisiler.push().set(bilgi);
  }

  Future<void> kisiSil() async {
    refKisiler.child("keyYazılacak").remove();
  }

  Future<void> kisiGuncelle() async {
    var guncelbilgi = HashMap<String, dynamic>();
    guncelbilgi["kisi_Ad"] = "Yeni Ahmet";
    guncelbilgi["kisi_yas"] = 24;
    refKisiler.child("keyYazılacak").update(guncelbilgi);
  }

//Sürekli güncel tutar. Bir kere çalıştıktan sonra sürekli dinler.
  Future<void> tumKisiler() async {
    refKisiler.onValue.listen((event) {
      //veri okuma işlemlerinde as dynmaic eklemeyi unutma.
      var gelenDegerler = event.snapshot.value as dynamic;
      if (gelenDegerler != null) {
        gelenDegerler.forEach((key, nesne) {
          var gelenKisi = Kisiler.fromJson(nesne);
          print("************");
          print("Kisi key : $key");
          print("Kisi ad : ${gelenKisi.kisi_ad}");
          print("Kisi yaş : ${gelenKisi.kisi_yas}");
        });
      }
    });
  }

  //İsteğe bağlı bilgi çekme durumunda olur.
  Future<void> tumKisilerBirkere() async {
    refKisiler.once().then((value) {
      //veri okuma işlemlerinde as dynmaic eklemeyi unutma.

      var gelenDegerler = value.snapshot.value as dynamic;

      if (gelenDegerler != null) {
        gelenDegerler.forEach((key, nesne) {
          var gelenKisi = Kisiler.fromJson(nesne);
          print("************");
          print("Kisi key : $key");
          print("Kisi ad : ${gelenKisi.kisi_ad}");
          print("Kisi yaş : ${gelenKisi.kisi_yas}");
        });
      }
    });
  }

//Sorgu - Eşitlik arama
  Future<void> equalTo() async {
    var sorgu = refKisiler.orderByChild("kisi_ad").equalTo("Ece");

    sorgu.onValue.listen((event) {
      var gelenDegerler = event.snapshot.value as dynamic;

      if (gelenDegerler != null) {
        gelenDegerler.forEach((key, nesne) {
          var gelenKisi = Kisiler.fromJson(nesne);
          print("Kisi key : $key");
          print("Kisi ad : ${gelenKisi.kisi_ad}");
          print("Kisi yaş : ${gelenKisi.kisi_yas}");
        });
      }
    });
  }

// girilen değer kadar bilgi çeker
  Future<void> limitMetodlari() async {
    var sorgu = refKisiler
        .limitToFirst(1); // Farklı tek kısım. İstenilen kadar bilgi çeker.

    sorgu.onValue.listen((event) {
      var gelenDegerler = event.snapshot.value as dynamic;

      if (gelenDegerler != null) {
        gelenDegerler.forEach((key, nesne) {
          var gelenKisi = Kisiler.fromJson(nesne);
          print("Kisi key : $key");
          print("Kisi ad : ${gelenKisi.kisi_ad}");
          print("Kisi yaş : ${gelenKisi.kisi_yas}");
        });
      }
    });
  }

  // girilen değer aralıkları arasında veri çeker
  Future<void> degerAralikliSorgu() async {
    var sorgu = refKisiler.orderByChild("kisi_yas").startAt(15).endAt(19);
    // Farklı tek kısım. İstenilen değer aralığındakileri çeker.

    sorgu.onValue.listen((event) {
      var gelenDegerler = event.snapshot.value as dynamic;

      if (gelenDegerler != null) {
        gelenDegerler.forEach((key, nesne) {
          var gelenKisi = Kisiler.fromJson(nesne);
          print("Kisi key : $key");
          print("Kisi ad : ${gelenKisi.kisi_ad}");
          print("Kisi yaş : ${gelenKisi.kisi_yas}");
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    kisiEkle();
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
          children: <Widget>[],
        ),
      ),
    );
  }
}
