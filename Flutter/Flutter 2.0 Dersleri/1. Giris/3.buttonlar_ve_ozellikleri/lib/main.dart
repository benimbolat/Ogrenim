import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: FlatButton(
            onPressed: () {
              print("tıklandı");
            },
            child: Text("Tıkla"),
            color: Colors.blue,
          ),
        ),
      ),
    ),
  );
}
