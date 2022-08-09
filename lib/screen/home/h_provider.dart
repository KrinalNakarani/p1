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

  void multy2() {
    i = i * 2;
    notifyListeners();
  }

  void multy3() {
    i = i * 3;
    notifyListeners();
  }

  void multy6() {
    i = i * 6;
    notifyListeners();
  }
}
