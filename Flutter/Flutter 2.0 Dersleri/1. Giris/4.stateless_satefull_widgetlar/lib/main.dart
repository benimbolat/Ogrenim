import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row / Satır Widget"),
        ),
        body: Row(
          children: [
            Text(
              "ilk metinim burasıdır...",
              textAlign: TextAlign.center,
            ),
            Text(
              "ikinci metinim burasıdır...",
              textAlign: TextAlign.center,
            ),
            const FlutterLogo()
          ],
        ),
      ),
    );
  }
}
