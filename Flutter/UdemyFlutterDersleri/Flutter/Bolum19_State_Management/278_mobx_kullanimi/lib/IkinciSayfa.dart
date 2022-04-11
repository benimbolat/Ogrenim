import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_kullanimi/SayacModel.dart';

class IkinciSayfa extends StatelessWidget {
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
              onPressed: () {
                sayacModelNesne.sayaciArttir();
              },
              child: Text("Arttır"),
            ),
            ElevatedButton(
              onPressed: () {
                sayacModelNesne.sayaciAzalt(2);
              },
              child: Text("Azalt"),
            ),
          ],
        ),
      ),
    );
  }
}
