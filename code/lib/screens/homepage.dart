import '/screens/expenses.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

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
  int year = 0;
  int vyear = 0;
  String mon = "";

  String jan = "Jan";
  String feb = "Feb";
  String mar = "Mar";
  String apr = "Apr";
  String may = "May";
  String jun = "Jun";
  String jul = "Jul";
  String aug = "Aug";
  String sep = "Sep";
  String oct = "Oct";
  String nov = "Nov";
  String dec = "Dec";
  viewyear() {
    setState(() {
      vyear = selectYear();
    });
  }

  selectYear() {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy');
    String formattedYear = formatter.format(now);
    setState(() {
      year = int.parse(formattedYear);
    });
    return formattedYear;
  }

  selectMonth() {
    var now = DateTime.now();
    var formatter = DateFormat('MM');
    String formattedMonth = formatter.format(now);
    var month = formattedMonth;
    switch (month) {
      case '01':
        setState(() {
          mon = jan;
        });
        break;
      case '02':
        setState(() {
          mon = feb;
        });
        break;
      case '03':
        setState(() {
          mon = mar;
        });
        break;
      case '04':
        setState(() {
          mon = apr;
        });
        break;

      case '05':
        setState(() {
          mon = may;
        });
        break;
      case '06':
        setState(() {
          mon = jun;
        });
        break;
      case '07':
        setState(() {
          mon = jul;
        });
        break;
      case '08':
        setState(() {
          mon = aug;
        });
        break;
      case '09':
        setState(() {
          mon = sep;
        });
        break;
      case '10':
        setState(() {
          mon = oct;
        });
        break;
      case '11':
        setState(() {
          mon = nov;
        });
        break;
      case '12':
        setState(() {
          mon = dec;
        });
        break;
    }
    // setState(() {
    //   mon = formattedMonth;
    // });
    return formattedMonth;
  }

  @override
  void initState() {
    super.initState();
    var now = DateTime.now();
    var formatter = DateFormat('yyyy');
    String formattedYear = formatter.format(now);
    selectMonth();
    setState(() {
      year = int.parse(formattedYear);
    });
  }

  void showCustomDialog(BuildContext context, String message) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext cxt) {
        return Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Material(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("gggg")),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            message,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: const Menu(),
          appBar: AppBar(
            elevation: 1,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  highlightColor: Colors.amber.withOpacity(0.3),
                  splashColor: Colors.grey.withOpacity(0.5),
                  onTap: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    color: Colors.black,
                                    height: 40,
                                    width: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                year--;
                                              });
                                            },
                                            child: Container(
                                              color: Colors.yellow,
                                              height: 40,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  const Icon(
                                                    Icons.arrow_back_ios,
                                                    size: 15,
                                                  ),
                                                  Container(),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          color: Colors.white,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            viewyear(),
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                year++;
                                              });
                                            },
                                            child: Container(
                                              color: Colors.yellow,
                                              height: 40,
                                              width: 50,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Container(),
                                                  const Icon(
                                                    Icons.arrow_forward_ios,
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.green,
                                    height: 40,
                                    width: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = jan;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.blue,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              jan,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = feb;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.red,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              feb,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = mar;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.blue,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              mar,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = apr;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.red,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              apr,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = may;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.blue,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              may,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = jun;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.red,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              jun,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.black,
                                    height: 40,
                                    width: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = jul;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.blue,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              jul,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = aug;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.red,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              aug,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = sep;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.blue,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              sep,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = oct;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.red,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              oct,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = nov;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.blue,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              nov,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              mon = dec;
                                              showmonth = false;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.red,
                                            height: 40,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              dec,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                    setState(() {
                      showmonth = !showmonth;
                      selectYear();
                    });
                  },
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Row(
                      children: [
                        Text(mon),
                        showmonth
                            ? const Icon(Icons.arrow_drop_up)
                            : const Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                ),
                Container(),
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    showCustomDialog(context, "Hello");
                  },
                  icon: const Icon(Icons.sync))
            ],
          ),
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
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.passthrough,
                children: <Widget>[
                  // Max Size Widget
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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

                  Positioned(
                      top: 0,
                      left: 0,
                      child: Visibility(
                        visible: showmonth,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  color: Colors.black,
                                  height: 40,
                                  width: 50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              year--;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.yellow,
                                            height: 40,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                const Icon(
                                                  Icons.arrow_back_ios,
                                                  size: 15,
                                                ),
                                                Container(),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        height: 40,
                                        width: 50,
                                        child: Center(
                                            child: Text(
                                          "$year",
                                          style: const TextStyle(fontSize: 15),
                                        )),
                                      ),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              year++;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.yellow,
                                            height: 40,
                                            width: 50,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(),
                                                const Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.green,
                                  height: 40,
                                  width: 50,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = jan;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.blue,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            jan,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = feb;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.red,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            feb,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = mar;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.blue,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            mar,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = apr;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.red,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            apr,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = may;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.blue,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            may,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = jun;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.red,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            jun,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.black,
                                  height: 40,
                                  width: 50,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = jul;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.blue,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            jul,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = aug;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.red,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            aug,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = sep;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.blue,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            sep,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = oct;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.red,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            oct,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = nov;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.blue,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            nov,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            mon = dec;
                                            showmonth = false;
                                          });
                                        },
                                        child: Container(
                                          color: Colors.red,
                                          height: 40,
                                          width: 50,
                                          child: Center(
                                              child: Text(
                                            dec,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          floatingActionButton: isFabVisible
              ? FloatingActionButton(
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Expenses()),
                    );
                  },
                )
              : null),
    );
  }
}
