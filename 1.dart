//Create an application to take input number from user and print its reverse number in edittext without button.
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Reversenumberexample(),
    );
  }
}
class Reversenumberexample extends StatefulWidget {
  const Reversenumberexample({Key? key}) : super(key: key);

  @override
  State<Reversenumberexample> createState() => _ReversenumberexampleState();
}

class _ReversenumberexampleState extends State<Reversenumberexample> {
  var number = "";
  final numberController = TextEditingController();

  void reverseNumber(String value) {
    setState(() {
      number = value.split('').reversed.join();
      print(number);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reverse Number'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  // print(value);
                  reverseNumber(value);
                },
                controller: numberController,
                decoration: InputDecoration(hintText: 'Enter a value'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  number,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


