import 'ClassA.dart';

void main(List<String> args) {
  // Amaç classA'ya erişip değişken ve methodları çalıştırmak.

  var a = ClassA();
  print(a.degisken);
  a.metod1();
  String gelenSonuc = a.metod2();
  print(gelenSonuc);
}
