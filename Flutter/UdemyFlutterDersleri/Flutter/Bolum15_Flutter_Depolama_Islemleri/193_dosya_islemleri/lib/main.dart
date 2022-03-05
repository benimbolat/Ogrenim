import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

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
  var tfGirdi = TextEditingController();

  Future<void> veriYaz() async {
    var ad =
        await getApplicationDocumentsDirectory(); //Dosya sistemine izin erişim
    var uygulamaDosyalamaYolu = await ad.path;

    var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");

    dosya.writeAsString(
        tfGirdi.text); //texfielde ki girdiyi alıp dosyaya yazdıracak.

    tfGirdi.text =
        ""; //yazma işlemi sonrasında içerisini boşaltacak girdi alanını boşaltacak.
  }

  Future<void> veriOku() async {
    try {
      var ad =
          await getApplicationDocumentsDirectory(); //Dosya sistemine izin erişim
      var uygulamaDosyalamaYolu = await ad.path;

      var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");
      String okunanVeri = await dosya.readAsStringSync();
      tfGirdi.text = okunanVeri;
    } catch (e) {
      e.toString();
    }
  }

  Future<void> veriSil() async {
    var ad =
        await getApplicationDocumentsDirectory(); //Dosya sistemine izin erişim
    var uygulamaDosyalamaYolu = await ad.path;

    var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");
    if (dosya.existsSync()) {
      //dosya varmı yokmu kontrolu.
      dosya.delete();
    }
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
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tfGirdi,
                decoration: InputDecoration(
                  hintText: "Veri Giriniz",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("Yaz"),
                  onPressed: () {
                    veriYaz();
                  },
                ),
                ElevatedButton(
                  child: Text("Oku"),
                  onPressed: () {
                    veriOku();
                  },
                ),
                ElevatedButton(
                  child: Text("Sil"),
                  onPressed: () {
                    veriSil();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
