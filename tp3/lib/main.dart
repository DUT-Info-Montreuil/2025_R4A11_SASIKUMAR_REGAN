import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tp3/viewmodels/GameViewModel.dart';
import 'package:tp3/views/GameView.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GameViewModel(10, 8, 10),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Démineur',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Consumer<GameViewModel>(
          builder: (context, viewModel, child) {
            return GameView(viewModel: viewModel);
          },
        ),
      ),
    );
  }
}
