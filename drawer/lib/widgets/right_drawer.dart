import 'package:flutter/material.dart';
import 'package:drawer/widgets/menu_list_tile.dart';

class RightDrawerWidget extends StatelessWidget {
  const RightDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(color: Colors.blue),
            child: Icon(
              Icons.face,
              size: 120.0,
              color: Colors.white54,
            ),
          ),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}