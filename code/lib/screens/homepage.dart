import '/widgets/drawer.dart';

import '/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Menu(),
        appBar: appbarhead(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              color: Colors.white,
              height: 500,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
        ));
  }
}
