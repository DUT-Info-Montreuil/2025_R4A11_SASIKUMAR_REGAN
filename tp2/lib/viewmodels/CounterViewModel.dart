import 'package:flutter/foundation.dart';
import 'package:tp1/models/CounterModel.dart';

class CounterViewModel extends ChangeNotifier {
  CounterModel model = CounterModel();

  int get(){
    return model.get();
  }

  void _incrementCounter() {
    model.incrementCounter();
  }

  void _decrementCounter() {
    model.decrementCounter();
  }
}