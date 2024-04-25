import 'package:flutter/material.dart';
import 'about.dart';
import 'gratitude.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _howAreYou = "...";

  void _openPageAbout({required BuildContext context, bool fullscreenDialog = false}) {
    Navigator.push(
    context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => About(),
      ),
    );
  }

  void _openPageGratitude(
    {required BuildContext context, bool fullscreenDialog = false}) async {
    final String _gratitudeResponse = await Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => Gratitude(
          key: UniqueKey(), 
          radioGroupValue: -1,
        ),
      ),
    );
    _howAreYou = _gratitudeResponse ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator'),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => _openPageAbout(
              context: context,
              fullscreenDialog: true,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:  Text('Grateful for: $_howAreYou', style: const TextStyle(fontSize: 32.0),),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openPageGratitude(context: context),
        tooltip: 'About',
        child: const Icon(Icons.sentiment_satisfied),
      ),
    );
  }
}
