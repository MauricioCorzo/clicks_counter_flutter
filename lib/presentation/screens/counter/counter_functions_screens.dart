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
        IconButton,
        IconData,
        Icons,
        MainAxisAlignment,
        Scaffold,
        SizedBox,
        StadiumBorder,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clicksCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Functions"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                this.clicksCounter = 0;
              });
            },
          ),
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButtonWidget(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                this.clicksCounter = 0;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButtonWidget(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                this.clicksCounter++;
              });
            },
          ),

          const SizedBox(
              height: 10), //Forma de agregar padding entre dos Widgets
          CustomButtonWidget(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                if (this.clicksCounter > 0) {
                  this.clicksCounter--;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed; // or VoidCallback como tipado

  const CustomButtonWidget({
    required this.icon,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: this.onPressed,
      child: Icon(this.icon),
    );
  }
}
