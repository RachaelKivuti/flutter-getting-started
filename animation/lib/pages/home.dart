import 'package:flutter/material.dart';
import 'package:animation/widgets/animated_container.dart';
import 'package:animation/widgets/animated_cross_fade.dart';
import 'package:animation/widgets/animated_opacity.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
        backgroundColor: Colors.green,
      ),
      body: const SafeArea(
        child: Column(
          children: <Widget>[
            AnimatedContainerWidget(),
            Divider(),
            AnimatedCrossFadeWidget(),
            Divider(),
            AnimatedOpacityWidget(),
          ],
        ),
      ),
    );
  }
}
