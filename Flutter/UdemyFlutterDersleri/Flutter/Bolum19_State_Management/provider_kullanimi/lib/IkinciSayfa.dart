import 'package:flutter/material.dart';

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
            Text(
              "0",
              style: TextStyle(fontSize: 36),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Sayıyı Arttır")),
            ElevatedButton(onPressed: () {}, child: Text("Sayıyı Azalt")),
          ],
        ),
      ),
    );
  }
}
