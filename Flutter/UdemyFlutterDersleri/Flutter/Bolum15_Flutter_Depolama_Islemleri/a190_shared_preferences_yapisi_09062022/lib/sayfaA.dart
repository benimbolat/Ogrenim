import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  Future<void> veriOku() async {
    var sp = await SharedPreferences.getInstance();
    String ad = sp.getString("ad") ?? "isim yok";
    int yas = sp.getInt("yas") ?? 0;
    double boy = sp.getDouble("boy") ?? 0.00;
    bool bekarmi = sp.getBool("bekarmi") ?? false;

    var arkadasListe = sp.getStringList("arkadasListesi");

    print("$ad $yas $boy $bekarmi");

    for (var forDegiskenAdi in arkadasListe!) {
      print(forDegiskenAdi);
    }
  }

  @override
  void initState() {
    veriOku();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayfa A"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            veriOku();
          },
          child: const Text("Yazdır"),
        ),
      ),
    );
  }
}
