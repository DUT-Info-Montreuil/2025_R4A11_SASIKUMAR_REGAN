import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp1/viewmodels/CounterViewModel.dart';

class CustomCounter extends StatelessWidget {
  const CustomCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final counterViewModel = context.watch<CounterViewModel>();



    throw UnimplementedError();
  }
}

