void main(List<String> args) {
  late int carpim;
  var sayilar = <int>[1, 2, 3, 4, 5];
  for (var i = 0; i < sayilar.length; i++) {
    carpim = 2 * sayilar[i];
    sayilar[i] = carpim;
  }
  print(sayilar);
}
