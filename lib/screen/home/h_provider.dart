import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int i = 0;

  void ADD() {
    i++;
    notifyListeners();
  }

  void Minus() {
    i--;
    notifyListeners();
  }

  void Multy2() {
    i = i * 2;
    notifyListeners();
  }

  void Multy3() {
    i = i * 3;
    notifyListeners();
  }

  void Multy6() {
    i = i * 6;
    notifyListeners();
  }
}
