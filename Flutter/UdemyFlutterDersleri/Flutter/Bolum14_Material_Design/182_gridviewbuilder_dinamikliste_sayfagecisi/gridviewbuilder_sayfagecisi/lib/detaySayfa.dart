import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetaySayfa extends StatefulWidget {
  String ulkeAdi;
  DetaySayfa({required this.ulkeAdi});
  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secilen Sayfası"),
      ),
      body: Center(
        child: Text(
          widget.ulkeAdi,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
