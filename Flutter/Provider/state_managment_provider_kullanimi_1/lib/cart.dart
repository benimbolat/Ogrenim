import 'package:flutter/material.dart';

class MyCart extends ChangeNotifier {
  late final List<String> _list = [];
  List<String> get list => _list;

  late int _totalPrice = 0;
  int get totalPrice => _totalPrice;

  void addItem(String item) {
    _list.add(item);
    _totalPrice += 10;
    notifyListeners();
  }

  void removeItem(String item) {
    _list.remove(item);
    _totalPrice -= 10;
    notifyListeners();
  }

  void clearCart() {
    _list.clear();
    _totalPrice -= ((_list.length) * 10);
    notifyListeners();
  }
}
