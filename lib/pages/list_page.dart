import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/list_entry.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawer(
        idx: 0,
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'LIST',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          IconButton(
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
              icon: const Icon(
                Icons.star,
                size: 40,
              )),
        ]),
        leading: const Text(""),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [ListEntry()],
          ),
        ),
      ),
      // drawer: MyDrawer(
      //   idx: 0,
      // ),
    );
  }
}
