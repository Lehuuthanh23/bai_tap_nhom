import 'dart:math';
import 'package:bai_tap_nhom/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawer(
        idx: 1,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'HOME',
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
      body: buildHomePage(col: 6, row: 10),
    );
  }

  GridView buildHomePage({required int col, required int row}) {
    var ran = Random();
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: col),
      itemCount: col * row,
      itemBuilder: (context, index) {
        return Container(
          color: Color.fromRGBO(
              ran.nextInt(255), ran.nextInt(255), ran.nextInt(255), 1),
          margin: const EdgeInsets.all(5),
        );
      },
    );
  }
}
