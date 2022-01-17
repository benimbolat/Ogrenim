class odev7 {
  int kotaUcretHesaplama(int kota) {
    int ucret = 100;
    if (kota > 50) {
      kota -= 50;
      ucret += kota * 4;
    }
    kota += 50;
    print("Kullandığınız Kotanız = $kota GB");
    return ucret;
  }
}
