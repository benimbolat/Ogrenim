import 'dart:collection';

void main(List<String> args) {
  var sayilar = HashSet<int>();

  var isimler = HashSet.from(["Ahmet", "Mehmet"]);

  var meyveler = HashSet<String>();
  meyveler.add("çilek");
  meyveler.add("muz");
  meyveler.add("kivi");
  print(meyveler);
}
