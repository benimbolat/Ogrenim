import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Satır başına içerisinde olacak item.
        childAspectRatio: 2 / 1, // Genişlik/yükseklik
        children: [
          GestureDetector(
            onTap: () {
              print("Güneşe tıklandı");
            },
            child: Card(
              child: Column(
                children: [
                  Icon(Icons.wb_sunny),
                  Text("Güneş"),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              children: [
                Icon(Icons.star),
                Text("Yıldız"),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Icon(Icons.brightness_2),
                Text("Ay"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
