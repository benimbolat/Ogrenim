//Liste tanımlama yöntemleri

//! var sayilar = List(); KALDIRILDI
//! var sonuclar = new List(); KALDIRILDI
//! var iller = List<String>(); KALDIRILDI
var plakalar = [16, 65, 56];

//? Yerlerine gelen List atamalası;

var iller = <String>[];

void main(List<String> args) {
  //TODO ----- 65 List'e veri ekleme ve okuma -----

  var meyveler = <String>["çilek", "kedi"];

  meyveler.add("Vişne");

  meyveler[1] = "Ananas";

  meyveler.insert(1, "Muz");

  print(meyveler);

  //TODO ----- 66 List İşlemleri -----

  var meyveler2 = <String>[];
  meyveler2.add("çilek");
  meyveler2.add("muz");
  meyveler2.add("Vişne");
  meyveler2.add("karpuz");

  print(meyveler2.isEmpty); // Boşmu dolumu kontrolu
  print(meyveler2.length);
  print(meyveler2.first);
  print(meyveler2.last);

  var liste = meyveler2.reversed;
  print(liste);
}
