import 'isci.dart';
import 'mudur.dart';
import 'ogretmen.dart';
import 'personel.dart';

void main(List<String> args) {
  var mudur = Mudur();
  Personel ogretmen = Ogretmen(); //polyMorphism budur.
  Personel isci = Isci();
  mudur.iseAl(isci);
  mudur.iseAl(ogretmen);
}
