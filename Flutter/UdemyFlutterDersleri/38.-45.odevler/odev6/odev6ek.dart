class odev6 {
  int maasHesaplama(int gun) {
    int mesaiBulma = 8 * gun;
    print("Çalışmas Saati = $mesaiBulma");
    int sonuc = (8 * 10) * gun;
    if (mesaiBulma >= 160) {
      int saat = mesaiBulma - 160;
      int mesaiHesap = saat * 20;
      sonuc += mesaiHesap;
    }
    return sonuc;
  }
}
