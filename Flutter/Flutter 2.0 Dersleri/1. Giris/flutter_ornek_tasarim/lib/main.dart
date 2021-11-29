import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Renk Tutucu
    Color renkTutucu = Theme.of(context).primaryColor;

    Widget baslikAlani = Container(
      padding: EdgeInsets.fromLTRB(22, 22, 32, 22),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Demon Slayer'den bir görüntü.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    "1080x720",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.blue,
          ),
          Text("48"),
        ],
      ),
    );

    //Button oluşturma
    Column _buttonOlustumaTaslagi(
        Color btnTaslakRengi, IconData btnTaslakIkon, String btnTaslakEtiket) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            btnTaslakIkon,
            color: btnTaslakRengi,
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(
              btnTaslakEtiket,
              style: TextStyle(
                fontSize: 12.0,
                color: renkTutucu,
              ),
            ),
          ),
        ],
      );
    }

    // widget tanımlama (buton oluşturma)
    Widget buttonBolumu = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buttonOlustumaTaslagi(
              renkTutucu, Icons.file_download_rounded, "İndir"),
          _buttonOlustumaTaslagi(renkTutucu, Icons.favorite, "Favori'ye Ekle"),
          _buttonOlustumaTaslagi(renkTutucu, Icons.api_rounded, "Şikayet Et"),
        ],
      ),
    );

    //Metin Widget
    Widget metinAlani = Container(
      padding: EdgeInsets.all(12),
      child: Text(
        "After a demon attack leaves his family slain and his sister cursed, Tanjiro embarks upon a, perilous journey to find a cure and avenge those he's lost.",
        softWrap: true,
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Örnek Tasarım Uygulaması"),
        ),
        body: ListView(
          children: [
            Image.asset(
              "image/DemonSlayer.jpeg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            baslikAlani,
            buttonBolumu,
            metinAlani,
          ],
        ),
      ),
    );
  }
}
