// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key, required this.idx});
  final idx;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.amber.shade100),
            child: const Text("Menu"),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(
              "Home",
              style: TextStyle(color: idx == 1 ? Colors.blue : Colors.grey),
            ),
            onTap: () {
              if (idx != 1) {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushNamed(context, '/');
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_rounded),
            title: Text(
              "List",
              style: TextStyle(color: idx == 0 ? Colors.blue : Colors.grey),
            ),
            onTap: () {
              if (idx != 0) {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushNamed(context, '/list');
              }
            },
          ),
        ],
      ),
    );
  }
}
