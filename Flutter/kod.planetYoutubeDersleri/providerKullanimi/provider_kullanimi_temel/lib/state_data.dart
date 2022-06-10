import 'package:flutter/widgets.dart';

class StateData with ChangeNotifier {
  String sehir = 'Sivas';

  void newCity(String city) {
    sehir = city;
    notifyListeners();
  }
}
