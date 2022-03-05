import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int sayac = 0;

  Future<void> sayacKontrol() async {
    var sp = await SharedPreferences
        .getInstance(); //await sayesinde burdaki işlemin bitmesini bekleyecek.

    sayac = sp.getInt("sayac") ?? 0;

    setState(() {
      sayac = sayac + 1;
    });

    sp.setInt("sayac", sayac); // en son elde edilen sayasc kaydedilir.
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayacKontrol();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Açılış Sayısı : $sayac",
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
