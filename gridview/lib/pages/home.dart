import 'package:flutter/material.dart';
import 'package:gridview/widgets/gridview_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        backgroundColor: Colors.blue,
      ),
      body: const SafeArea(
        child: GridViewBuilderWidget(),
      ),
    );
  }
}