import 'adres.dart';
import 'musteriler.dart';

void main(List<String> args) {
  var adres = Adres("Ankara", "Keçiören");
  var muteriler = Musteriler("Enes", adres, 21);

  print("Müşteri Adı : ${muteriler.ad}");
  print("Müşteri Yaşı : ${muteriler.yas}");
  print("Müşteri İli : ${muteriler.adres.il}");
  print("Müşteri İlçei : ${muteriler.adres.ilce}");
}
