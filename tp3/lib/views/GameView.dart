import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/GameViewModel.dart';
import '../widgets/MapButton.dart';

class GameView extends StatelessWidget {
  final GameViewModel viewModel;

  const GameView({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Démineur', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                viewModel.revealAll();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Révéler toutes les cases',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Consumer<GameViewModel>(
                builder: (context, viewModel, child) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black54, blurRadius: 5, spreadRadius: 2),
                      ],
                    ),
                    child: Table(
                      border: TableBorder.all(color: Colors.white70, width: 1.5),
                      children: List.generate(
                        viewModel.mapModel.nbLine,
                            (row) => TableRow(
                          children: List.generate(
                            viewModel.mapModel.nbCol,
                                (col) => TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: MapButton(
                                  row: row,
                                  col: col,
                                  caseModel: viewModel.mapModel.cases[row][col],
                                  onClick: viewModel.click,
                                  onLongPress: viewModel.onLongPress,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
