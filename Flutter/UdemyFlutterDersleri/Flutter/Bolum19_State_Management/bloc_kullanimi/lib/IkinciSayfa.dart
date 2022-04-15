import 'package:flutter/material.dart';

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "0",
              style: TextStyle(fontSize: 36),
            ),
            ElevatedButton(
              child: const Text("Arttır"),
              onPressed: () {
                
                
              },
            ),
            ElevatedButton(
              child: const Text("Azalt"),
              onPressed: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
