import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextStyle fontSize = const TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen')),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Clicks', style: fontSize),
            Text('$counter', style: fontSize),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
          counter++;
          print('Pressed');
        },
        child: const Icon(Icons.plus_one_outlined),
      ),
    );
  }
}