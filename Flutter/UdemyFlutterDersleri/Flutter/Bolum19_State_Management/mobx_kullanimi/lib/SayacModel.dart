import 'package:mobx/mobx.dart';

part 'SayacModel.g.dart';

class SayacModel = SayacModelBase with _$SayacModel; //Private sınıf modeli oluşturdu otomatik

abstract class SayacModelBase
    with
        Store //Kalıtım olmadan özellik katıldı. Özellik adı Store Mobxden gelıyor.
{
  @observable //gözlemci anlamında
  int sayac = 0;

  @action //Tetikleme işlemi yapıyor.
  void sayaciArttir() {
    sayac = sayac + 1;
  }

  @action //Tetikleme işlemi yapıyor.
  void sayaciAzalt(int miktar) {
    sayac = sayac - miktar;
  }
}
