import 'package:flutter/material.dart';
import '../models/CaseModel.dart';
import '../models/MapModel.dart';


class GameViewModel extends ChangeNotifier {
  late MapModel _mapModel;

  GameViewModel(int nbLine, int nbCol, int nbBomb) {
    _mapModel = MapModel(nbLine, nbCol, nbBomb);
    generateMap();
  }

  MapModel get mapModel => _mapModel;

  void generateMap() {
    _mapModel.generateMap();
    notifyListeners();
  }

  void click(int row, int col) {
    if (!_mapModel.cases[row][col].hasFlag) {
      if (_mapModel.cases[row][col].hasBomb) {
        _mapModel.explode(row, col);
      } else {
        _mapModel.reveal(row, col);
        //if (_mapModel.isGameWon()) {
          //_mapModel.revealAll();
        //}
      }
      notifyListeners();
    }
  }

  void onLongPress(int row, int col) {
    _mapModel.toggleFlag(row, col);
    notifyListeners();
  }

  Widget getIcon(CaseModel caseModel) {
    if (!caseModel.hidden) {
      if (caseModel.hasBomb) {
        return Image.asset('assets/images/bomb.png', height: 40);
      } else if (caseModel.number > 0) {
        return Image.asset('assets/images/${caseModel.number}.png', height: 40);
      } else {
        return Container();
      }
    } else if (caseModel.hasFlag) {
      return Image.asset('assets/images/flag.png', height: 40);
    }
    return Container();
  }
}
