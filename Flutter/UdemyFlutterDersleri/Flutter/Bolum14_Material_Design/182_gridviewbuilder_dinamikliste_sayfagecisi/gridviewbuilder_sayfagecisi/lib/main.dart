import 'package:flutter/material.dart';
import 'package:gridviewbuilder_sayfagecisi/detaySayfa.dart';

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
  var ulkeler = ["Türkiye", "Almanya", "Fransa", "Ukrayna", "Azerbaycan"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 2 / 1,
        ),
        itemCount: ulkeler.length,
        itemBuilder: (context, indeks) {
          return GestureDetector(
            onTap: () {
              // print("${ulkeler[indeks]} seçildi");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetaySayfa(
                    ulkeAdi: ulkeler[indeks],
                  ),
                ),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                          value: 2,
                          child: Text("Güncelle"),
                        ),
                      ],
                      onSelected: (PopupMenuItem) {
                        if (PopupMenuItem == 1) {
                          print(ulkeler[indeks] + " silindi");
                        }
                        if (PopupMenuItem == 2) {
                          print(ulkeler[indeks] + " güncellendi");
                        }
                      },
                    ),
                    // TextButton(
                    //   child: Text("Ülke Seç"),
                    //   style: TextButton.styleFrom(primary: Colors.red),
                    //   onPressed: () {
                    //     print("TextButton ile ${ulkeler[indeks]} seçildi");
                    //   },
                    //),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
