import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_learn_view.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //Flutter key yapısı. Sayfa =>

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: ContainerSizedBoxLearn(),
    );
  }
}