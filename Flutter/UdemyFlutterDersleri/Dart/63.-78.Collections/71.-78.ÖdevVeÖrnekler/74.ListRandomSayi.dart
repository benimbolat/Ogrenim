import 'dart:math';

void main(List<String> args) {
  var rastgeleSayi = <int>[];
  var randomSayi = Random();
  for (var i = 0; i < 10; i++) {
    rastgeleSayi.add(randomSayi.nextInt(100));
  }
  rastgeleSayi.sort();
  print(rastgeleSayi);
}
