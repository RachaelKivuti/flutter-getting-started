// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //removing the debug banner in application
      title: 'My counter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 2, 121, 28)),
        canvasColor: Theme.of(context).colorScheme.background,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MAKE A BID'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//the state class of the stateful widget class
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // value the bid starts

  void _incrementCounter() {
    setState(() {
      _counter += 500; // each click of button increases bid by 500 ksh
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'BID BEGINS AT 0.\n'
              'EVERY PRESS INCREASE BID WITH 500 KSH.\n'
              'THE BID IS NOW AT KSH:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto', // Change to the font family
                fontSize: 18, // Changing the font size
                color: Color.fromARGB(255, 9, 110, 16), // changing font color
                fontWeight: FontWeight.bold, // Chaning the font weight
                fontStyle: FontStyle.italic, // Changing the font style
                letterSpacing: 1.0, //  adjusting letter spacing
                wordSpacing: 2.0, // adjusting word spacing
                height: 1.5, //  adjusting line height
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
