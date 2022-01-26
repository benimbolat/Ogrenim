import 'package:flutter/material.dart';
import 'package:sayfalar_arasi_gecis/sayfaB.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  _SayfaAState createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Sayfa B'ye git"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SayfaB()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
