import 'package:flutter/foundation.dart';
import 'package:tp1/core/constants/constants.dart';
import 'package:tp1/models/CounterModel.dart';

class CounterViewModel extends ChangeNotifier {
  CounterViewModel();

  CounterModel model = CounterModel();

  int get(){
    return model.get();
  }

  void incrementCounter() {
    model.incrementCounter();
    notifyListeners();
  }

  void decrementCounter() {
    model.decrementCounter();
    notifyListeners();
  }

}