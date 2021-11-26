import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Scaffold"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Image(
          image: AssetImage("images/ev.jpg"),
        ),
      ),
    ),
  ));
}
