import '/screens/category.dart';
import '/screens/settings.dart';

import '/screens/chart.dart';

import '/screens/profile.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width / 1.5,
        height: size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: Colors.yellowAccent[700],
              height: size.height / 4.5,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 40),
                          CircleAvatar(
                            child: const Icon(Icons.person),
                            maxRadius: size.height / 35,
                          ),
                          const SizedBox(height: 10),
                          const Text("Sign In"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Chart()),
                );
              },
              leading: const Icon(Icons.pie_chart_outline, color: Colors.purple),
              title: const Text("Chart"),
            ),
            const Divider(
              thickness: 1.0,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Category()),
                );
              },
              leading: const Icon(Icons.category_outlined, color: Colors.red),
              title: const Text("Categories"),
            ),
            const ListTile(
              leading: Icon(Icons.add_chart_sharp, color: Colors.indigo),
              title: Text("Export"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              },
              leading: Icon(Icons.settings, color: Colors.blue[300]),
              title: const Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.star_rate_outlined, color: Colors.amber[300]),
              title: const Text("Rate Us"),
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.green[300]),
              title: const Text("About"),
            ),
          ],
        ),
      ),
    );
  }
}

Drawer drawerleft() {
  return Drawer(
    child: SingleChildScrollView(
        child: Container(
      width: 250,
    )),
  );
}
