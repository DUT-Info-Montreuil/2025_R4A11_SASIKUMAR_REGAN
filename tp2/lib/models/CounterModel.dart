class CounterModel {

  CounterModel();

  int _counter = 0;

  int get(){
    return _counter;
  }

  void incrementCounter() {
    _counter++;
  }

  void decrementCounter() {
    _counter--;
  }

}