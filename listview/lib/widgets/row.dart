import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.directions_car,
        size: 48.0,
        color: Colors.lightGreen,
      ),
      title: Text('Car $index'),
      subtitle: Text('Very Cool'),
      //sets the trailing widget of the list item. Depending on whether the index of the current item modulo 3 is even or not, it displays either a bookmark border icon or a bookmark icon.
      //calculates the remainder when the index is divided by 3.
      trailing: (index % 3).isEven
      //checks if the result of (index % 3) is an even number.
          ? Icon(Icons.bookmark_border)
          //If not even, it displays Icon(Icons.bookmark)
          : Icon(Icons.bookmark),
          //sets the selected state of the list item to false
      selected: false,
      onTap: () {
        //logs a message to the console indicating which row was tapped.
        print('Tapped on Row $index');
      },
    );
  }
}
