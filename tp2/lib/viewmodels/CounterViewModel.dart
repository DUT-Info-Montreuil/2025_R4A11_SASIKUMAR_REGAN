import 'package:flutter/foundation.dart';
import 'package:tp1/models/CounterModel.dart';

class CounterViewModel extends ChangeNotifier {
  CounterModel model = CounterModel();
  CounterViewModel();

  int get counter => model.counter;

  void incrementCounter() {
    model.incrementCounter();
    notifyListeners();
  }

  void decrementCounter() {
    model.decrementCounter();
    notifyListeners();
  }

}