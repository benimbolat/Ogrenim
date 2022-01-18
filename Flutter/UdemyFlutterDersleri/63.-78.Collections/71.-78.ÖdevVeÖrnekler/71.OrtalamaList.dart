void main(List<String> args) {
  int toplam = 1;
  double bolme = 1;
  var sayilar = <int>[15, 62, 63, 55, 94, 28, 77, 38];

  for (var i in sayilar) {
    toplam = toplam + i;
  }
  bolme = toplam / sayilar.length;
  print(bolme);
}
