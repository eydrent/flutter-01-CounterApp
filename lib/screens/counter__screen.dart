import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 10;

  void increaseCounter() {
    counter++;
    setState(() {});
  }

  void decreaseCounter() {
    (counter > 0) ? counter-- : null;
    setState(() {});
  }

  void resetCounter() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActions(
        increaseFn: increaseCounter,
        decreaseFn: decreaseCounter,
        resetFn: resetCounter,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: () =>  increaseFn(),
          // onPressed: () => setState(() => counter++),
          child: const Icon(Icons.plus_one_outlined),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () =>  resetFn(),
          // onPressed: () => setState(() => counter = 0),
          child: const Icon(Icons.lock_reset_outlined),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          // onPressed: () => setState(() => (counter > 0) ? counter-- : (counter = 0)),
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () =>  decreaseFn(),
        ),

      ],
    );
  }
}