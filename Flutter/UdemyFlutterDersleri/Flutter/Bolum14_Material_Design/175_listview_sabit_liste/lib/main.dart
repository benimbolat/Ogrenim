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
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.wb_sunny),
            title: Text("Güneş"),
            subtitle: Text("Güneş Alt Başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print("tıklandı");
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_3_sharp),
            title: Text("Ay"),
            subtitle: Text("Ay Alt Başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print("tıklandı");
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Yıldız"),
            subtitle: Text("Yıldız Alt Başlık"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print("tıklandı");
            },
          ),
          GestureDetector(
            onTap: () {
              print("Kart tıklandı");
            },
            child: Card(
              child: Row(
                children: [
                  Text("Kart Tasarım"),
                  Spacer(),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
