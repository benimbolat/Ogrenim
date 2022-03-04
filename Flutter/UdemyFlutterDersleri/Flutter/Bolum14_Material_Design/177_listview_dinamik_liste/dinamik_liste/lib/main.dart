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
  var ulkeler = [
    "Türkiye",
    "Fransa",
    "ABD",
    "Rusya",
    "Ukrayna",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ulkeler.length,
          itemBuilder: (context, indeks) //indeks ülkeler listesindeki öğeler.
              {
            //Context Burası
            return GestureDetector(
              onTap: () {
                print("${ulkeler[indeks]}seçildi");
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 150,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("Text ile ${ulkeler[indeks]} seçildi");
                          },
                          child: Text(ulkeler[indeks]),
                        ),
                        Spacer(),
                        PopupMenuButton(
                          child: Icon(Icons.more_vert),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 1,
                              child: Text("Sil"),
                            ),
                            PopupMenuItem(
                              value: 1,
                              child: Text("Güncelle"),
                            ),
                          ],
                          onSelected: (PopupMenuItem) {
                            if (PopupMenuItem == 1) {
                              print("1");
                            }
                            if (PopupMenuItem == 2) {
                              print("2");
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
