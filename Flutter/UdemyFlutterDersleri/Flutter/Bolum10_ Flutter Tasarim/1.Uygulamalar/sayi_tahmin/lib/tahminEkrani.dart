import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayi_tahmin/sonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  @override
  _TahminEkraniState createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
  var tfTahmin = TextEditingController(); //Texfield üzerinden veri alacak
  int ratgeleSayi = 0;
  int kalanHak = 5;
  String yonlendirme = "";

  @override
  void initState() {
    super.initState();
    ratgeleSayi =
        Random().nextInt(101); //0 ile 100 arasında sayı uretip değişkene işler
    print("Rastgele Sayı : $ratgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Kalan Hak : 4",
              style: TextStyle(color: Colors.pink, fontSize: 30),
            ),
            Text(
              "Yardım : Tahmini Azalt",
              style: TextStyle(color: Colors.black54, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("Tahmin Et!"),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SonucEkrani()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
