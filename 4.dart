import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module 2',
      home: Backgroundcolour(),
    );
  }
}

class Backgroundcolour extends StatefulWidget {
  const Backgroundcolour({Key? key}) : super(key: key);

  @override
  State<Backgroundcolour> createState() => _BackgroundcolourExampleState();
}

class _BackgroundcolourExampleState extends State<Backgroundcolour> {

  var colorList = [
    Colors.grey.shade200,
    Colors.blue.shade200,
    Colors.red.shade200,
    Colors.purple.shade200,
    Colors.pink.shade200,
    Colors.green.shade200
  ];

  var current = Colors.white;

  void changeBackground(){

    setState(() {
      var index = Random().nextInt(colorList.length);
      current = colorList[index];
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: current,
      appBar: AppBar(
        title: const Text('Background colour'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  changeBackground();
                },
                child: Text('Change Background'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
