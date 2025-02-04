import 'dart:math';

import 'package:tp3/models/CaseModel.dart';


class MapModel {
  int nbLine = 0;
  int nbCol = 0;
  int nbBomb = 0;
  List<List<CaseModel>> cases = List<List<CaseModel>>.empty();

  void initCases(){
    for (var value in cases) {
      value.gene
    }
  }

  void initBomb(){
    for (var value in cases) {
      int x = Random().nextInt(nbLine);
      value.elementAt(x).hasBomb = true;
    }
  }




}