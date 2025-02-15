import 'package:flutter/material.dart';

import '../models/CaseModel.dart';
import '../viewmodels/GameViewModel.dart';

class MapButton extends StatelessWidget {
  final int row;
  final int col;
  final CaseModel caseModel;
  final Function(int, int) onClick;
  final Function(int, int) onLongPress;

  const MapButton({
    Key? key,
    required this.row,
    required this.col,
    required this.caseModel,
    required this.onClick,
    required this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick(row, col),
      onLongPress: () => onLongPress(row, col),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: caseModel.hidden ? Colors.grey : Colors.white,
        ),
        child: Center(child: GameViewModel(0, 0, 0).getIcon(caseModel)),
      ),
    );
  }
}