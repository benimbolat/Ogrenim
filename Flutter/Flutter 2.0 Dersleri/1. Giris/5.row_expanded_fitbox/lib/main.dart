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
          body: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "ilk metinim burası...",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "ilk metinim burası...",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: const FlutterLogo(),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "ilk metinim burası...",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "ilk metinim burası...",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: const FlutterLogo(),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
