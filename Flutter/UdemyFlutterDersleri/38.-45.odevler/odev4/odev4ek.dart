class Odev4 {
  void kelimeAdeti(String kelime, harf) {
    int sayac = 0;
    for (var i = 0; i < kelime.length; i++) {
      if (harf == kelime[i]) {
        sayac += 1;
      }
    }
    print("$harf harfinden toplam = $sayac adet var.");
  }
}
