import 'dart:ffi';

void main() {
  int not1 = 10, not2 = 55;
  double ortalama;

  ortalama = (not1 + not2) / 2;

  print(ortalama);

  if (ortalama >= 50) {
    print("geçtin");
  }
  if (ortalama >= 0 && ortalama <= 49) {
    print("Kaldın");
  }
}
