import 'package:flutter/material.dart';
import 'package:drawer/widgets/menu_list_tile.dart';

class LeftDrawerWidget extends StatelessWidget {
  const LeftDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 80.0,
              color: Colors.white,
            ),
            accountName: Text('Ray'),
            accountEmail: Text('ray756@gmail.com'),
            otherAccountsPictures: <Widget>[
              Icon(
                Icons.bookmark_add,
                color: Colors.white,
              )
            ],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/estate.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}
