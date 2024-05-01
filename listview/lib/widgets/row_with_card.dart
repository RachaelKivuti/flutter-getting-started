import 'package:flutter/material.dart';

class RowWithCardWidget extends StatelessWidget {
  const RowWithCardWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(
          Icons.flight,
          size: 48.0,
          color: Colors.lightBlue,
        ),
        title: Text('Airplane $index'),
        subtitle: const Text('Very Cool'),
        //place widget at end of row/tile
        trailing: Text(
          //. The value displayed is calculated by multiplying the current index by 7 and appending a '%' sign.
          '${index * 7}%',
          style: const TextStyle(color: Colors.lightBlue),
        ),
        //selected : true,
        //anonymous function executed when the user taps on the widget.
        onTap: () {
          //logs a message to the console indicating which row was tapped.
          print('Tapped on Row $index');
        },
      ),
    );
  }
}
