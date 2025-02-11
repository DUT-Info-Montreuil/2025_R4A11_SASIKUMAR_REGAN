class CaseModel {
  bool _hidden = true;
  bool _hasBomb = false;
  bool _hasExploded = false;
  bool _hasFlag = false;
  int _number = 0;



  CaseModel();

  bool get hasFlag => _hasFlag;

  set hasFlag(bool value) {
    _hasFlag = value;
  }

  bool get hasExploded => _hasExploded;

  set hasExploded(bool value) {
    _hasExploded = value;
  }

  bool get hasBomb => _hasBomb;

  set hasBomb(bool value) {
    _hasBomb = value;
  }

  bool get hidden => _hidden;

  set hidden(bool value) {
    _hidden = value;
  }

  int get number => _number;

  set number(int value) {
    _number = value;
  }


}