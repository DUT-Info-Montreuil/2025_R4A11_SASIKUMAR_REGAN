import 'dart:math';

import 'package:tp3/models/CaseModel.dart';


class MapModel {
  int nbLine = 0;
  int nbCol = 0;
  int nbBomb = 0;
  List<List<CaseModel>> cases = List<List<CaseModel>>.empty();

  MapModel(this.nbLine, this.nbCol, this.nbBomb) {
    if (nbLine <= 0) nbLine = 1;
    if (nbCol <= 0) nbCol = 1;
    if (nbBomb >= nbLine * nbCol) nbBomb = nbLine * nbCol - 1;
  }

  void initCases(){
    cases = List<List<CaseModel>>.generate(
        10, (int index) => List<CaseModel>.generate(
        10, (int i) => CaseModel()));
  }

  void initBomb(){
    if (nbLine > 0 && nbCol > 0) {
      for (var i = 0; i < nbBomb; i++) {
        int x = Random().nextInt(nbLine);  // Assure que nbLine > 0
        int y = Random().nextInt(nbCol);   // Assure que nbCol > 0
        cases[x][y].hasBomb = true;
      }
    }
  }


  void initNumber(){
    for (var i = 0; i < cases.length; i++) {
      var value = cases[i];
      for (var j = 0; j < value.length; j++){
        if (!value[j].hasBomb){
          value[j].number = computeNumber(i, j);
        }
      }
    }
  }

  int computeNumber(int caseX, int caseY){
    int cptBomb = 0;

    for (var i = -1 ; i <= 1 ; i++){
      for (var j = -1 ; j <= 1 ; j++){
        if (cases[caseX + i][caseY + j].hasBomb) cptBomb++;
      }
    }

    return cptBomb;
  }

  void generateMap(){
    initCases();
    initBomb();
    initNumber();
  }

  void reveal(int caseX, int caseY){
    if (cases[caseX][caseY].hidden) cases[caseX][caseY].hidden = false;
  }

  void revealAll(){
    for (var ligne in cases) {
      for (var uneCase in ligne) {
        if (uneCase.hidden) uneCase.hidden = false;
      }
    }
  }

  void explode(int caseX, int caseY){
    if (cases[caseX][caseY].hasBomb){
      reveal(caseX, caseY);
      cases[caseX][caseY].hasExploded = true;
    }
  }

  void toggleFlag(int caseX, int caseY){
    cases[caseX][caseY].hasFlag = !cases[caseX][caseY].hasFlag;
  }



}