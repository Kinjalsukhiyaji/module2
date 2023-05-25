//Create an application to input 2 numbers from user and all numbers between those 2 numbers in next page
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Range App',
      home: NumberRangeScreen(),
    );
  }
}

class NumberRangeScreen extends StatefulWidget {
  @override
  _NumberRangeScreenState createState() => _NumberRangeScreenState();
}

class _NumberRangeScreenState extends State<NumberRangeScreen> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();

  void _navigateToResultScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          int.parse(_firstNumberController.text),
          int.parse(_secondNumberController.text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Range'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'First Number',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Second Number',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _navigateToResultScreen(context),
              child: Text('Show Numbers'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final int firstNumber;
  final int secondNumber;

  ResultScreen(this.firstNumber, this.secondNumber);

  @override
  Widget build(BuildContext context) {
    List<int> numbers = List.generate(
        (secondNumber - firstNumber).abs() + 1,
            (i) => i + firstNumber < secondNumber ? i + firstNumber : secondNumber);

    return Scaffold(
      appBar: AppBar(
        title: Text('Number Range Result'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) => Text(numbers[index].toString()),
        ),
      ),
    );
  }
}