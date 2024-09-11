// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this

import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Center,
        Column,
        FloatingActionButton,
        FontWeight,
        Icon,
        Icons,
        MainAxisAlignment,
        Scaffold,
        State,
        StatefulWidget,
        Text,
        TextStyle,
        Widget;

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clicksCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${this.clicksCounter}',
                style: const TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w100,
                )),
            Text(this.clicksCounter != 1 ? "Clicks" : "Click",
                style: const TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            this.clicksCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
