import 'package:flutter/material.dart' show Colors, MaterialApp, ThemeData;
import 'package:flutter/widgets.dart'
    show runApp, Widget, BuildContext, StatelessWidget;
import 'package:hello_world_app/presentation/screens/counter/counter_functions_screens.dart'
    show CounterFunctionsScreen;
// import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

// class StatlessWidget viene de material
class MyApp extends StatelessWidget {
  //Constructors for public widgets should have a named 'key' parameter.
  //Try adding a named parameter to the constructor.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*
      Use 'const' with the constructor to improve performance.
      Try adding the 'const' keyword to the constructor invocation.
      Si el Wideget nunca va a cambiar y es estatico y desde que se haga el build
      es buena practica usar "const"
     */
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.tealAccent,
      ),
      home: const CounterFunctionsScreen(),
    );
  }
}
