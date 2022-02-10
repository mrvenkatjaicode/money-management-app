// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';

bool showmonth = false;
AppBar appbarhead() {
  return AppBar(
    elevation: 1,
    title: GestureDetector(
      onTap: () {
        showmonth = !showmonth;
      },
      child: Row(
        children: const [Text("Jan"), Icon(Icons.arrow_drop_down)],
      ),
    ),
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.sync))],
  );
}

class Choice {
  Choice({
    required this.title,
    required this.icon,
    required this.color,
  });
  final String title;
  final IconData icon;
  final Color color;
}

List<Choice> choices = <Choice>[
  Choice(title: 'Home', icon: Icons.home, color: Colors.green),
  Choice(title: 'Contact', icon: Icons.contacts, color: Colors.blue),
  Choice(title: 'Map', icon: Icons.map, color: Colors.yellow),
  Choice(title: 'Phone', icon: Icons.phone, color: Colors.blueGrey),
  Choice(title: 'Camera', icon: Icons.camera_alt, color: Colors.blueAccent),
  Choice(title: 'Setting', icon: Icons.settings, color: Colors.green),
  Choice(title: 'Album', icon: Icons.photo_album, color: Colors.redAccent),
  Choice(title: 'WiFi', icon: Icons.wifi, color: Colors.grey),
  Choice(title: 'Home', icon: Icons.home, color: Colors.lightBlue),
  Choice(title: 'Contact', icon: Icons.contacts, color: Colors.lightGreen),
  Choice(title: 'Map', icon: Icons.map, color: Colors.red),
  Choice(title: 'Phone', icon: Icons.phone, color: Colors.teal),
  Choice(title: 'Camera', icon: Icons.camera_alt, color: Colors.green),
  Choice(title: 'Setting', icon: Icons.settings, color: Colors.orange),
  Choice(title: 'Album', icon: Icons.photo_album, color: Colors.lightBlue),
  Choice(title: 'WiFi', icon: Icons.wifi, color: Colors.grey),
  Choice(title: 'Home', icon: Icons.home, color: Colors.blueAccent),
  Choice(title: 'Contact', icon: Icons.contacts, color: Colors.blue),
  Choice(title: 'Map', icon: Icons.map, color: Colors.lightGreen),
  Choice(title: 'Phone', icon: Icons.phone, color: Colors.red),
  Choice(title: 'Camera', icon: Icons.camera_alt, color: Colors.green),
  Choice(title: 'Setting', icon: Icons.settings, color: Colors.orangeAccent),
  Choice(title: 'Album', icon: Icons.photo_album, color: Colors.blueGrey),
  Choice(title: 'WiFi', icon: Icons.wifi, color: Colors.purpleAccent),
];

class SelectCard extends StatefulWidget {
  const SelectCard({
    Key? key,
    required this.choice,
  }) : super(key: key);
  final Choice choice;
  @override
  _SelectCardState createState() => _SelectCardState(choice);
}

class _SelectCardState extends State<SelectCard> {
  final Choice choice;
  bool colo = false;

  _SelectCardState(this.choice);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          colo = !colo;
        });
      },
      child: Column(
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colo ? choice.color : Colors.blueGrey[100]),
            child: Icon(choice.icon),
          ),
          Text(choice.title),
        ],
      ),
    );
  }
}
