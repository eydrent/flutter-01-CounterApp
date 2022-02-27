import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 10;

  @override
  Widget build(BuildContext context) {

    TextStyle fontSize = const TextStyle(fontSize: 30);

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
          counter++;
          setState(() {});
        },
        child: const Icon(Icons.plus_one_outlined),
      ),
    );
  }
}