import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Images'),
          backgroundColor: const Color.fromARGB(255, 113, 240, 101),
        ),
        body: const SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  ImagesandIconWidget(),
                  Divider(),
                  BoxDecoratorWidget(),
                  Divider(),
                  InputDecoratorsWidget(),
                ],
              ),
            ),
          ),
        ));
  }
}

class ImagesandIconWidget extends StatelessWidget {
  const ImagesandIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image(
          image: const AssetImage("assets/images/photo.jpeg"),
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png',
          width: MediaQuery.of(context).size.width,
        ),
        const Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: 48.0,
        ),
      ],
    );
  }
}

class BoxDecoratorWidget extends StatelessWidget {
  const BoxDecoratorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 100.0,
        width: 100.0,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.orange,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ]),
      ),
    );
  }
}

class InputDecoratorsWidget extends StatelessWidget {
  const InputDecoratorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
          decoration: InputDecoration(
            labelText: "Notes",
            labelStyle: TextStyle(color: Colors.purple),
            border: OutlineInputBorder(),
          ),
        ),
        const Divider(
          color: Colors.lightGreen,
          height: 50.0,
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Enter your notes'),
        ),
      ],
    );
  }
}
