import 'package:flutter/foundation.dart';

class MyProvider extends ChangeNotifier {
  int selectedIndex = 0;

  void setIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
