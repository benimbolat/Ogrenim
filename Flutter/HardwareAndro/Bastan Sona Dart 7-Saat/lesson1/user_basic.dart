void main(List<String> args) {
  String musteriAdi = " Ahmet";
  int musteriParasi = 15;
  int eklenenUcret = 5;
  String karsilamaMesaji = "Merhaba";
  String bakiyeMesaji = " bakiyenizde ";
  int toplamBakiye = musteriParasi + eklenenUcret;

  print(
      "${karsilamaMesaji + musteriAdi + bakiyeMesaji + toplamBakiye.toString()} TL var");
}
