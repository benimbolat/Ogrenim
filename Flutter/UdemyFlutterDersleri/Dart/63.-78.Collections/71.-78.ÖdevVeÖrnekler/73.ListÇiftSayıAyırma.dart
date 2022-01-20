void main(List<String> args) {
  var sayilar = <int>[1, 23, 32, 47, 59, 100, 18, 54];
  var ciftSayilar = <int>[];
  var tekSayilar = <int>[];

  for (var i in sayilar) {
    if (i % 2 == 0) {
      print("Çift Sayi: $i");
      ciftSayilar.add(i);
    } else {
      print("Tek Sayi : $i");
      tekSayilar.add(i);
    }
  }
  print("********************");
  print("Çift Sayılar Kümesi = ${ciftSayilar}");
  print("Tek Sayılar Kümesi = ${tekSayilar}");
}
