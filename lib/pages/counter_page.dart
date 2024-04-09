import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;
  //method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("You pushed the button this many times:"),
          Text(_counter.toString(), style: TextStyle(fontSize: 25),)
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { _incrementCounter();},
        child: Icon(Icons.plus_one),
      ),
    ));
  }
}
