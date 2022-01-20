import 'dart:collection';

import '68.ListeIleNesneTabanliCalima.dart';

void main(List<String> args) {
  var o1 = Ogrenciler(100, "Enes", "10/F");
  var o2 = Ogrenciler(200, "Ahmet", "12/A");
  var o3 = Ogrenciler(300, "Ayşe", "11/C");

  var ogrenciler = HashSet<Ogrenciler>(); //TODO Hashset tanılama
  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);

  for (var o in ogrenciler) {
    print("**********************");
    print("Öğrenci No : ${o.no}");
    print("Öğrenci Ad : ${o.ad}");
    print("Öğrenci Sinif : ${o.sinif}");
  }
}
