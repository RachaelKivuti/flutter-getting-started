import 'package:flutter/material.dart';

//stateful widget
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//state class of the stateful widget
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Roboto', // Change to the font family
            fontSize: 18, // Changing the font size
            color: Color.fromARGB(255, 250, 252, 251), // changing font color
            fontWeight: FontWeight.bold, // Chaning the font weight
            fontStyle: FontStyle.normal, // Changing the font style
            letterSpacing: 1.0, //  adjusting letter spacing
            wordSpacing: 2.0, // adjusting word spacing
            height: 1.5, //  adjusting line height
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 121, 28),
      ),
      body: Container(),
    );
  }
}
