//Create an application to increase font size when plus button click and decrease when minus button click.
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Application',
      home:fontsize(),
    );
  }
}
class fontsize extends StatefulWidget {
  const fontsize({Key? key}) : super(key: key);

  @override
  State<fontsize> createState() => _fontsizeState();
}

class _fontsizeState extends State<fontsize> {
  var counter = 0;
  var fontSize = 20.0;

  void decrement() {
    setState(() {
      counter--;
      fontSize-=2;
      print('Decrement: $counter');
    });
  }
  void increment() {
    setState(() {
      counter++;
      fontSize+=2;
      print('Increment: $counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Application'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: (){
                  decrement();
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 20),
                  ),
              ),
              Text(
                  '$counter',
                style: TextStyle(fontSize: fontSize),
              ),
              ElevatedButton(
                  onPressed: (){
                  increment();
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 20),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
