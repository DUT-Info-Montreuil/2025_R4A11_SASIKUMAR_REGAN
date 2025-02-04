import 'package:flutter/material.dart';
import 'package:tp1/widgets/CustomCounter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/HomePage');
            },
            child: Image.asset('assets/logo.png', height: 40),
          )

      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const Text(
              'You have pushed the button this many times:',
            ),
            CustomCounter(

            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/Page2');
                },
                child: const Text(
                  "Aller à la deuxieme page",
                ))
          ],
        ),
      ),
    );
  }

}
