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
                  Container(
                    height: MediaQuery.of(context).size.height / 5.5,
                    child: CircleAvatar(
                      maxRadius: MediaQuery.of(context).size.height / 20,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.6,
                          height: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nanefhghg",
                                style: TextStyle(fontSize: 16),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gender",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.6,
                          height: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nanefhghg",
                                style: TextStyle(fontSize: 16),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Birthday",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.6,
                          height: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nanefhghg",
                                style: TextStyle(fontSize: 16),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ],
                    ),
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
