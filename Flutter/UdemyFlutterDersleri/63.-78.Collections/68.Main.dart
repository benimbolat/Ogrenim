import '68.ListeIleNesneTabanliCalima.dart';

void main(List<String> args) {
  var o1 = Ogrenciler(100, "Enes", "10/F");
  var o2 = Ogrenciler(200, "Özgür", "11/C");
  var o3 = Ogrenciler(300, "Sıla", "10/C");

  var ogrenciler = <Ogrenciler>[];
  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);

  for (var o in ogrenciler) {
    print("\n**********\n");
    print("Öğrenci Numarası : ${o.no}");
    print("Öğrenci Adi : ${o.ad}");
    print("Öğrenci Sınıfı : ${o.sinif}");
  }
}
