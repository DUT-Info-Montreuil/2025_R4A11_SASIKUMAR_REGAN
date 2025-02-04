class CaseModel {
  bool _hidden = false;
  bool _hasBomb = false;
  bool _hasExploded = false;
  bool _hasFlag = false;

  CaseModel();

  bool get hasFlaf => _hasFlag;

  set hasFlaf(bool value) {
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
}