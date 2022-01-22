import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text("Profile"),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      height: 30,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.2,
                        child: Text("Sign Out"),
                      ),
                      value: 1,
                    ),
                  ])
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Card(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    maxRadius: MediaQuery.of(context).size.height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Name"),
                      Text("data"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Gender"),
                      Text("data"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Birthday"),
                      Text("data"),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
