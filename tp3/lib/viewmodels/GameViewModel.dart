import 'package:flutter/foundation.dart';
import 'package:tp3/models/MapModel.dart';

//notifyListeners();

class GameViewModel extends ChangeNotifier {
  GameViewModel();

  int get getCol => MapModel().nbCol;
  int get getLine => MapModel().nbLine;
  int get getBomb => MapModel().nbBomb;



}