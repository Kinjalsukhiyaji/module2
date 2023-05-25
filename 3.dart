/*Create an application with radio buttons (Add, Substraction, Multiply, Division) EditText
(number1, number2) and print result as per user choice from radio button in TextView*/
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController no1Controller = TextEditingController();
  TextEditingController no2Controller = TextEditingController();
  String result = '';
  String selectOperator = 'add';

  void calculateResult() {
    double num1 = double.tryParse(no1Controller.text) ?? 0;
    double num2 = double.tryParse(no2Controller.text) ?? 0;

    setState(() {
      switch (selectOperator) {
        case 'add':
          result = (num1 + num2).toString();
          break;
        case 'subtract':
          result = (num1 - num2).toString();
          break;
        case 'multiply':
          result = (num1 * num2).toString();
          break;
        case 'divide':
          if (num2 != 0) {
            result = (num1 / num2).toString();
          } else {
            result = 'Error: Division by zero';
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Operation:',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Radio(
                    value: 'add',
                    groupValue: selectOperator,
                    onChanged: (value) {
                      setState(() {
                        selectOperator = value.toString();
                      });
                    },
                  ),
                  Text('Addition'),
                  Radio(
                    value: 'subtract',
                    groupValue: selectOperator,
                    onChanged: (value) {
                      setState(() {
                        selectOperator = value.toString();
                      });
                    },
                  ),
                  Text('Subtraction'),
                ],
              ),
          Row(
            children: [
                  Radio(
                    value: 'multiply',
                    groupValue: selectOperator,
                    onChanged: (value) {
                      setState(() {
                        selectOperator = value.toString();
                      });
                    },
                  ),
                  Text('Multiplication'),
                  Radio(
                    value: 'divide',
                    groupValue: selectOperator,
                    onChanged: (value) {
                      setState(() {
                        selectOperator = value.toString();
                      });
                    },
                  ),
                  Text('Division'),
            ],
          ),
              SizedBox(height: 16),
              Text('Enter Number 1:'),
              TextField(
                controller: no1Controller,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              Text('Enter Number 2:'),
              TextField(
                controller: no2Controller,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: calculateResult,
                child: Text('Calculate'),
              ),
              SizedBox(height: 16),
              Text(
                'Result: $result',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
