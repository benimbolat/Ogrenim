import 'dart:io';

import '77.OOPKarneDersNotlar.dart';

void main(List<String> args) {
  var dersNotlariListesi = <DersNotlar>[];
  while (true) {
    print("Dersin adını giriniz : ");
    String ders = stdin.readLineSync()!;

    print("Dersin Notunu giriniz : ");
    int not = int.parse(stdin.readLineSync()!);

    var yeniNot = DersNotlar(not, ders);

    dersNotlariListesi.add(yeniNot);

    print("Çıkmak için (1) - Devam etmek için diğer sayılar ");
    late int cikis = int.parse(stdin.readLineSync()!);

    if (cikis == 1) {
      print("***************");

      for (var dn in dersNotlariListesi) {
        print("${dn.ders} : ${dn.not}");
      }

      print("Çıkış Yapıldı");
      break;
    }
  }
}
