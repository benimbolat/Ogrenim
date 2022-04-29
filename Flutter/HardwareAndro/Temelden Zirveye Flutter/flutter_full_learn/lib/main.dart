import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/cahce/shared_learn_cache.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //Flutter key yapısı. Sayfa =>

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme().theme,
      home: const SharedLearn(),
    );
  }
}
