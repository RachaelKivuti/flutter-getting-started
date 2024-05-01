import 'package:flutter/material.dart';
import 'package:gridview/classes/grid_icons.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> _iconList = GridIcons().getIconList();

    return GridView.builder(
        itemCount: 20,
        padding: const EdgeInsets.all(8.0),
        gridDelegate:
            const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150.0),
        itemBuilder: (BuildContext context, int index) {
          print('_buildGridViewBuilder $index');
          return Card(
            color: Colors.lightGreen.shade50,
            margin: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                print('Row $index');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    _iconList[index],
                    size: 48.0,
                    color: Colors.lightGreen,
                  ),
                  const Divider(),
                  Text(
                    'Index $index',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
