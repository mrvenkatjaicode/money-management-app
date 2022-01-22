import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

enum BestTutorSite { male, female, others }

class _ProfileState extends State<Profile> {
  String name = "Venkat";

  final namecontroller = TextEditingController();
  dynamic val = "Male";

  BestTutorSite _site = BestTutorSite.others;
  dynamic n;
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
                        GestureDetector(
                          onTap: () {
                            updateName(context);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.6,
                            height: 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "$name",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Divider(),
                              ],
                            ),
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
                        GestureDetector(
                          onTap: () {
                            updategender(context);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.6,
                            height: 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "$val",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Divider(),
                              ],
                            ),
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
                        GestureDetector(
                          onTap: () {
                            updateBirthday(context);
                          },
                          child: Container(
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

  Future<void> updategender(BuildContext context) {
    //  showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       int selectedRadio = 0;
    //       return AlertDialog(
    //         content: StatefulBuilder(
    //           builder: (BuildContext context, StateSetter setState) {
    //             return Column(
    //               mainAxisSize: MainAxisSize.min,
    //               children: List<Widget>.generate(4, (int index) {
    //                 return Radio<int>(
    //                   value: index,
    //                   groupValue: selectedRadio,
    //                   onChanged: (value) {
    //                     setState(() => selectedRadio = value!);
    //                   },
    //                 );
    //               }),
    //             );
    //           },
    //         ),
    //       );
    //     });
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Choose your gender"),
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 1.5,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Male"),
                      leading: Radio(
                        value: 1,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Female"),
                      leading: Radio(
                        value: 2,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Others"),
                      leading: Radio(
                        value: 3,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              );
            }),
          );
        });
  }

  Future<void> updateName(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Enter your name"),
            content: Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1.5,
              child: Column(
                children: [
                  TextField(
                    controller: namecontroller,
                    decoration: new InputDecoration(
                      hintText: 'Enter your name',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                        // borderRadius: new BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.amber),
                        // borderRadius: new BorderRadius.circular(25.7),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.amber),
                        // borderRadius: new BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "CANCEL",
                    style: TextStyle(color: Colors.yellowAccent[700]),
                  )),
              TextButton(
                  onPressed: () {
                    name = namecontroller.text;
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.yellowAccent[700]),
                  )),
            ],
          );
        });
  }

  Future<void> updateBirthday(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Choose birthday"),
            content: Container(
              height: MediaQuery.of(context).size.height / 5,
              child: Column(
                children: [
                  // DateTimeField(
                  //   // controller: datetimecontroller,
                  //   format: format,
                  //   decoration: InputDecoration(
                  //       border: UnderlineInputBorder(),
                  //       labelText: "Enter your Time"),
                  //   onShowPicker: (context, currentValue) async {
                  //     final time = await showTimePicker(
                  //       context: context,
                  //       initialTime: TimeOfDay.fromDateTime(
                  //           currentValue ?? DateTime.now()),
                  //     );
                  //     return DateTimeField.convert(time);
                  //   },
                  // ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    // UpdateData(titlecontroller.text, descriptioncontroller.text,
                    //     datetimecontroller.text, key);
                    // Navigator.of(context).pop();
                  },
                  child: Text(
                    "CANCEL",
                    style: TextStyle(color: Colors.yellowAccent[700]),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.yellowAccent[700]),
                  )),
            ],
          );
        });
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// void main() {
//   runApp(MyApp());
// }

// //void main() => runApp(MyApp());
// class MyApp extends StatefulWidget {
//   @override
//   _MyState createState() {
//     return _MyState();
//   }
// }

// class _MyState extends State<MyApp> {
//   dynamic val = -1;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.green[400],
//               title: Text("Flutter RadioButton"),
//             ),
//             body: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 ListTile(
//                   title: Text("Male"),
//                   leading: Radio(
//                     value: 1,
//                     groupValue: val,
//                     onChanged: (value) {
//                       setState(() {
//                         val = value;
//                       });
//                     },
//                     activeColor: Colors.green,
//                   ),
//                 ),
//                 ListTile(
//                   title: Text("Female"),
//                   leading: Radio(
//                     value: 2,
//                     groupValue: val,
//                     onChanged: (value) {
//                       setState(() {
//                         val = value;
//                       });
//                     },
//                     activeColor: Colors.green,
//                   ),
//                 ),
//               ],
//             )));
//   }
// }
