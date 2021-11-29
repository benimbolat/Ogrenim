import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Metin Özellikleri"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "Enes Bolat",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
              letterSpacing: 3,
              fontFamily: "yeniyazi",
            ),
          ),
        ),
      ),
    ),
  );
}
