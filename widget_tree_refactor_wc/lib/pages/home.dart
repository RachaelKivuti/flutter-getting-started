import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Tree Refactor with Widget Class'),
        backgroundColor: const Color.fromARGB(255, 3, 5, 99),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                RowWidget(
                  key: UniqueKey(),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                ),
                RowAndColumnWidget(
                  key: UniqueKey(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.redAccent,
          height: 40.0,
          width: 40.0,
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Expanded(
          child: Container(
            color: Colors.greenAccent,
            height: 40.0,
            width: 40.0,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          color: Colors.red,
          height: 40.0,
          width: 40.0,
        ),
      ],
    );
  }
}

class RowAndColumnWidget extends StatelessWidget {
  const RowAndColumnWidget({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: 60.0,
              width: 60.0,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              color: Colors.amber,
              height: 40.0,
              width: 40.0,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              color: Colors.brown,
              height: 20.0,
              width: 20.0,
            ),
            const Divider(),
            RowAndStackWidget(
              key: UniqueKey(),
            ),
            const Divider(),
            Text('End of the Line. Date: ${DateTime.now()}'),
          ],
        ),
      ],
    );
  }
}

class RowAndStackWidget extends StatelessWidget {
  const RowAndStackWidget({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 100.0,
          child: Stack(
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.yellowAccent,
              ),
              Container(
                height: 60.0,
                width: 60.0,
                color: Colors.lightBlueAccent,
              ),
              Container(
                height: 40.0,
                width: 40.0,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
