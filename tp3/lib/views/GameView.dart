import 'package:flutter/material.dart';

import '../viewmodels/GameViewModel.dart';
import '../widgets/MapButton.dart';

class GameView extends StatelessWidget {
  final GameViewModel viewModel;

  const GameView({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Démineur')),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: viewModel.mapModel.nbCol,
              ),
              itemCount: viewModel.mapModel.nbLine * viewModel.mapModel.nbCol,
              itemBuilder: (context, index) {
                int row = index ~/ viewModel.mapModel.nbCol;
                int col = index % viewModel.mapModel.nbCol;
                return MapButton(
                  row: row,
                  col: col,
                  caseModel: viewModel.mapModel.cases[row][col],
                  onClick: viewModel.click,
                  onLongPress: viewModel.onLongPress,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
