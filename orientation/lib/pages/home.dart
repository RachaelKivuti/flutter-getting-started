import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('orientation'),
        backgroundColor: const Color.fromARGB(255, 11, 25, 235),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                OrientationLayoutIconsWidget(),
                Divider(),
                OrientationLayoutWidget(),
                Divider(),
                GridViewWidget(),
                Divider(),
                OrientationBuilderWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrientationLayoutIconsWidget extends StatelessWidget {
  const OrientationLayoutIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return _orientation == Orientation.portrait
        ? const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.school,
                size: 48.0,
              ),
            ],
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.school,
                size: 48.0,
              ),
              Icon(
                Icons.brush,
                size: 48.0,
              ),
            ],
          );
  }
}

class OrientationLayoutWidget extends StatelessWidget {
  const OrientationLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return _orientation == Orientation.portrait
        ? Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            height: 100.0,
            width: 100.0,
            child: const Text('Portrait'),
          )
        : Container(
            alignment: Alignment.center,
            color: Colors.lightGreen,
            height: 100.0,
            width: 200.0,
            child: const Text('Landscape'),
          );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;

    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      //if portrait, 2 irems per row displayed, otherwise 4
      crossAxisCount: _orientation == Orientation.portrait ? 2 : 4,
      //ratio of width and height of child
      childAspectRatio: 5.0,
      //generate list of 8 widgets, each with label grid
      children: List.generate(8, (int index) {
        return Text(
          "Grid $index",
          textAlign: TextAlign.center,
        );
      }),
    );
  }
}

class OrientationBuilderWidget extends StatelessWidget {
  const OrientationBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        return orientation == Orientation.portrait
            ? Container(
                alignment: Alignment.center,
                color: Colors.yellow,
                height: 100.0,
                width: 100.0,
                child: const Text('Portrait'),
              )
            : Container(
                alignment: Alignment.center,
                color: Colors.lightGreen,
                height: 100.0,
                width: 200.0,
                child: const Text('Landscape'),
              );
      },
    );
  }
}
