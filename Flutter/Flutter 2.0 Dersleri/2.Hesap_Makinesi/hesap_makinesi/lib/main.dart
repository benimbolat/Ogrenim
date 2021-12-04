import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(HesapMakinesi());
}

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({Key? key}) : super(key: key);

  @override
  _HesapMakinesiState createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Hesap Makinesi",
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
                child: Text(
                  "10x20",
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
                child: Text(
                  "15",
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                HesapMakinesiButtonu(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
