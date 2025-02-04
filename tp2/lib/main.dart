import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp1/viewmodels/CounterViewModel.dart';
import 'package:tp1/views/HomeView.dart';
import 'package:tp1/views/Page2.dart';

void main() {
  runApp(const MyApp());
}

const Color primaryColor = Color(0xFF2196F0);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterViewModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          useMaterial3: true,
        ),
        initialRoute: '/HomePage',
        routes: {
          '/HomePage' : (context) => const HomeView(title: 'Compteur App'),
          '/Page2' : (context) => const Page2(title: 'La page 2')
        },
      ),
    );
  }
}

