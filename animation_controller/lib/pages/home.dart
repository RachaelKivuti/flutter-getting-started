import 'package:flutter/material.dart';
import 'package:animation_controller/widgets/animated_baloon.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controlling Animation'),
        backgroundColor: Colors.blue,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                AnimatedBalloonWidget(),
              ],
            ),
          ),
        )
      ),
    );
  }
}