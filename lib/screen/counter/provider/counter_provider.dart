import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int i = 0;

  void increment() {
    i++;
    notifyListeners();
  }

  void decrement() {
    i--;
    notifyListeners();
  }

  void multi2() {
    i = i * 2;
    notifyListeners();
  }

  void multi3() {
    i = i * 3;
    notifyListeners();
  }

  void multi4() {
    i = i * 4;
    notifyListeners();
  }
}
