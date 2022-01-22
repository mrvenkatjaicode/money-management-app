import 'package:flutter/material.dart';

AppBar appbarhead() {
  return AppBar(
    elevation: 1,
    title: GestureDetector(
      onTap: () {},
      child: Row(
        children: [Text("Jan"), Icon(Icons.arrow_drop_down)],
      ),
    ),
    actions: [IconButton(onPressed: () {}, icon: Icon(Icons.sync))],
  );
}
