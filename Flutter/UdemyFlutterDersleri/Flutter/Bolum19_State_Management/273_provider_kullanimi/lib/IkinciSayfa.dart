import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/SayacModel.dart';

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<SayacModel>(
              builder: (context, sayacModelNesne, child) {
                return Text(
                  //  Eğer sayaçta bir değişim olursa ve ardındanda notifyListeners
                  //çalıştırılırsa burdaki consumer yapısını çalıştırır ve işlemi gerçekleştirir.

                  "${sayacModelNesne.sayaciOku()}",
                  style: TextStyle(fontSize: 36),
                );
              },
            ),
            Consumer<SayacModel>(
              builder: (context, sayacModelNesne, child) {
                return ElevatedButton(
                  onPressed: () {
                    sayacModelNesne.sayaciAttir();
                  },
                  child: Text("Arttır"),
                );
              },
            ),
            Consumer<SayacModel>(
              builder: (context, sayacModelNesne, child) {
                return ElevatedButton(
                  onPressed: () {
                    sayacModelNesne.sayaciAzalt(2);
                  },
                  child: Text("Azalt"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
