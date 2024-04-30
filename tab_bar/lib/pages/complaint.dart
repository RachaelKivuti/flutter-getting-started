import 'package:flutter/material.dart';

class Complaint extends StatelessWidget {
  const Complaint({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.sentiment_dissatisfied,
          size: 120.0,
          color: Colors.red,
        ),
      ),
    );
  }
}