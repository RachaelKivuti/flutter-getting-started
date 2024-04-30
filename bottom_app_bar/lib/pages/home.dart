import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomAppBar',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'roboto',
              fontStyle: FontStyle.italic,
              fontSize: 20,
            )),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              color: Colors.white,
              icon: const Icon(Icons.access_alarm),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.white,
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.white,
              icon: const Icon(Icons.flight),
              onPressed: () {},
            ),
            const Divider(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
