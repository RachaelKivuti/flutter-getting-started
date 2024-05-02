import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Image buildJournalHeaderImage() {
      return const Image(
        image: AssetImage('assets/images/forest.jpg'),
        fit: BoxFit.cover,
      );
    }

    Column buildJournalEntry() {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Visit Forest',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          Divider(),
          Text(
            'It’s going to be a great hike. We are going out for a hike in Malimu Forest, then get to the top of the mountain  and watch the sunset.',
            style: TextStyle(color: Colors.black54),
          ),
        ],
      );
    }

    Row buildJournalWeather() {
      return const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.wb_cloudy,
                color: Colors.green,
              ),
            ],
          ),
          SizedBox(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    '25º',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    '4500 San Alpho Drive, Malimu, TX',
                    style: TextStyle(color: Colors.lightGreenAccent),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    }

    Wrap buildJournalTags() {
      return Wrap(
        spacing: 8.0,
        children: List.generate(7, (int index) {
          return Chip(
            label: Text(
              'Stop ${index + 1}',
              style: const TextStyle(fontSize: 10.0),
            ),
            avatar: const Icon(
              Icons.safety_check,
              color: Colors.green,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: const BorderSide(color: Colors.grey),
            ),
            backgroundColor: Colors.grey.shade100,
          );
        }),
      );
    }

    Row buildJournalFooterImages() {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/dolphin.jpg'),
            radius: 40.0,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/whitefox.jpg'),
            radius: 40.0,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/forest.jpg'),
            radius: 40.0,
          ),
          SizedBox(
            width: 100.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.cake),
                Icon(Icons.star_border),
                Icon(Icons.music_note),
                //Icon(Icons.movie),
              ],
            ),
          ),
        ],
      );
    }

    Widget buildBody() {
      return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildJournalHeaderImage(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    buildJournalEntry(),
                    const Divider(),
                    buildJournalWeather(),
                    const Divider(),
                    buildJournalTags(),
                    const Divider(),
                    buildJournalFooterImages(),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Layouts',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.black54),
        //brightness: Brightness.light,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.cloud_queue))
        ],
      ),
      body: buildBody(),
    );
  }
}
