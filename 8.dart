//Write a program to show four images around Text.
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset('assets/images/1.jpg'),
                  ),
                  Expanded(
                    child: Image.asset('assets/images/2.jpg'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Hello, world!',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset('assets/images/3.jpg'),
                  ),
                  Expanded(
                    child: Image.asset('assets/images/4.jpg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}