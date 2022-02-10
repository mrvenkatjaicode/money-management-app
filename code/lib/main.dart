import 'screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: Colors.yellow,
                  displayColor: Colors.red,
                ),
            primaryIconTheme: const IconThemeData(color: Colors.black),
            appBarTheme: const AppBarTheme(
                foregroundColor: Colors.black,
                // ignore: deprecated_member_use
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.black)),
            // primaryTextTheme: TextTheme(titleMedium: ) Colors.black,
            // primaryColor: Colors.white,
            scaffoldBackgroundColor: Colors.blueGrey[50],
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: const Color.fromARGB(255, 255, 213, 0))),
        home: const Homepage());
  }
}
