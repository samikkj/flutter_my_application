import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text('$_counter')),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          child: Icon(
            Icons.plus_one_sharp,
          )),
    );
  }
}
