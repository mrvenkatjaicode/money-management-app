import 'package:flutter/rendering.dart';

import '/widgets/drawer.dart';

import '/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isFabVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Menu(),
        appBar: appbarhead(),
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              setState(() {
                isFabVisible = false;
              });
            } else if (notification.direction == ScrollDirection.reverse) {
              setState(() {
                isFabVisible = false;
              });
            } else if (notification.direction == ScrollDirection.idle) {
              setState(() {
                isFabVisible = true;
              });
            }
            return true;
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.white,
                  height: 1500,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 300,
                      ),
                      Container(
                        color: Colors.black,
                        height: 300,
                      ),
                      Container(
                        color: Colors.green,
                        height: 300,
                      ),
                      Container(
                        color: Colors.pink,
                        height: 300,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: isFabVisible
            ? FloatingActionButton(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              )
            : null);
  }
}
