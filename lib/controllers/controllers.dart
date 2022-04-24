import 'package:flutter/widgets.dart';

class NumController extends ChangeNotifier {
  int num = 0;
  incrNumber() {
    num++;
    notifyListeners();
  }

  decrNumber() {
    num--;
    notifyListeners();
  }
}
