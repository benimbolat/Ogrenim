import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();

  Future<void> veriOku() async {
    //Buraya kayıt işlemini yapacağız ama önce yetki almalıyız.

    var sp = await SharedPreferences
        .getInstance(); //Bu yapının oluşmasını bekle demek.
    String ad = sp.getString("ad") ??
        "isim yok"; //soru işaret bu keydekini okurken hata oluşursa "isim yok" yazdıracak.

    int yas = sp.getInt("yas") ?? 99;
    double boy = sp.getDouble("boy") ?? 1.11;
    bool bekarMi = sp.getBool("bekarmi") ?? true;

    var arkadasListe = sp.getStringList("arkadasListe") ?? null;

    print("Ad : $ad");
    print("Yaş : $yas");
    print("Boy : $boy");
    print("Bekar mı : $bekarMi");

    for (var a in arkadasListe!) {
      print("Arkadaş : $a");
    }
  }
}
 @override
  void initState() {
    super.initState();
    veriOku();
  }
class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa A"),
      ),
      body: Center(),
    );
  }
}
