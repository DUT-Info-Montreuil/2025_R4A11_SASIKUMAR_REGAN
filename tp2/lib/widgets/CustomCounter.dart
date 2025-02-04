import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp1/viewmodels/CounterViewModel.dart';

class CustomCounter extends StatelessWidget {
  const CustomCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final counterViewModel = context.watch<CounterViewModel>();
    int counter = counterViewModel.get();
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: counterViewModel.decrementCounter,
          ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Icon(
            Icons.favorite,
            color: counter > -1 ? Colors.red : Colors.black,
            size: 48,
            semanticLabel: 'Icône favoris',
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: counterViewModel.incrementCounter,
          ),
        ],
      ),
    );
  }
}

