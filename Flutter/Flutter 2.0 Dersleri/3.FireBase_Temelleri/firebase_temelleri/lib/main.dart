import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: FirebaseEgos()));
}

class FirebaseEgos extends StatefulWidget {
  FirebaseEgos({Key? key}) : super(key: key);
  @override
  _FirebaseEgosState createState() => _FirebaseEgosState();
}

class _FirebaseEgosState extends State<FirebaseEgos> {
  //-----------------------------
  String ad = "", id = "", kategori = "";
  int sayfaSayisi = 0;

  idAl(idTutucu) {
    this.id = idTutucu;
  }

  adAl(adTutucu) {
    this.ad = adTutucu;
  }

  alKategori(kategoriTutucu) {
    this.kategori = kategoriTutucu;
  }

  sayfaSayisiAl(sayfaTutucu) {
    this.sayfaSayisi = int.parse(sayfaTutucu);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase EGOS"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (String idTutucu) {
                idAl(idTutucu);
              },
              decoration: InputDecoration(
                labelText: "Kitap ID ",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54, width: 2),
                ),
              ),
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (String adTutucu) {
                adAl(adTutucu);
              },
              decoration: InputDecoration(
                labelText: "Kitap Adı ",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54, width: 2),
                ),
              ),
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (String kategoriTutucu) {
                alKategori(kategoriTutucu);
              },
              decoration: InputDecoration(
                labelText: "Kitap Kategorisi ",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54, width: 2),
                ),
              ),
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (String sayfaTutucu) {
                sayfaSayisiAl(sayfaTutucu);
              },
              decoration: InputDecoration(
                labelText: "Sayfa Sayısı",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54, width: 2),
                ),
              ),
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Ekle"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                ),
                //
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Oku"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    onPrimary: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                ),
                //
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Güncelle"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    onPrimary: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                ),
                //
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Sil"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                ),
                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
