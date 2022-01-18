import 'dart:io';

void main(List<String> args) {
  var isimler = <String>["ahmet", "mehmet", "ayse", "ozgür", "enes", "ali"];

  print("Aratmak için isim giriniz = ");
  String isim = stdin.readLineSync()!;

  for (var i in isimler) {
    if (i == isim) {
      print("\n************************\n");
      print("$i ismi listemizde bulunuyor.");
      break;
    }
  }
}
