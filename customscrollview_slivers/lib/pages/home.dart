import 'package:flutter/material.dart';
import 'package:customscrollview_slivers/widgets/sliver_app_bar.dart';
import 'package:customscrollview_slivers/widgets/sliver_list.dart';
import 'package:customscrollview_slivers/widgets/sliver_grid.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomScrollView - Slivers'),
        elevation: 0.0,
      ),
      body: const CustomScrollView(
        slivers: <Widget>[
          SliverAppBarWidget(),
          SliverListWidget(),
          SliverGridWidget(),
        ],
      ),
    );
  }
}
