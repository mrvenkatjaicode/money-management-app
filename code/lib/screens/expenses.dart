import '/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 4.0,
              children: List.generate(choices.length, (index) {
                return Center(
                  child: SelectCard(choice: choices[index]),
                );
              }))),
    );
  }
}
