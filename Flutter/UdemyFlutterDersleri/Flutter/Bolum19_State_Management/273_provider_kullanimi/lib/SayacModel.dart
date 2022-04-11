import 'package:flutter/material.dart';

class SayacModel extends ChangeNotifier {
  int sayac = 0;

//dinleme işlemi
  int sayaciOku() {
    return sayac;
  }

//tetikleme işlemi
  void sayaciAttir() {
    sayac = sayac + 1;
    //arttırdıktan sonra tetiklemek için
    notifyListeners(); //dinleme işlemini tetikler.
  }

// Tetikleme işlemi
  void sayaciAzalt(int miktar) {
    sayac = sayac - miktar;
    notifyListeners();
  }
}
