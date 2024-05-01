import 'package:flutter/material.dart';
import 'package:listview/widgets/header.dart';
import 'package:listview/widgets/row_with_card.dart';
import 'package:listview/widgets/row.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        //create a scrollable list of items
        child: ListView.builder(
            //specifies the number of items in the list
            itemCount: 20,
            //defines a callback function itemBuilder that builds each item in the list dynamically based on its index.
            //index represents the position of the item in the list.
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return HeaderWidget(index: index);
              } else if (index >= 1 && index <= 3) {
                return RowWithCardWidget(index: index);
              } else {
                return RowWidget(index: index);
              }
            }),
      ),
    );
  }
}
