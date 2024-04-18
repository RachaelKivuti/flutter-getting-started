import 'package:flutter/material.dart';
import 'package:starter_project_template/pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // the root of application widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 2, 121, 28)),
        canvasColor: Theme.of(context).colorScheme.background,
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
