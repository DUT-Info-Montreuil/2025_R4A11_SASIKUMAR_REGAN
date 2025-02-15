import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tp3/viewmodels/GameViewModel.dart';
import 'package:tp3/views/GameView.dart';
import 'package:tp3/views/HomeView.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

        initialRoute: '/HomePage',
        routes: {
          '/HomePage' : (context) => const HomeView(),
          '/GamePage' : (context) =>
              Consumer<GameViewModel>(
                builder: (context, viewModel, child) {
                  return GameView(viewModel: viewModel);
                },
              ),
        },

        home: Consumer<GameViewModel>(
          builder: (context, viewModel, child) {
            return GameView(viewModel: viewModel);
          },
        ),
      ),
    );
  }
}
