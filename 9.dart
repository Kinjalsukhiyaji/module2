import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Selector from radio button',
      home: ColorScreen(),
    );
  }
}

class ColorScreen extends StatefulWidget {
  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  Color selectedColor = Colors.pinkAccent;

  void changeColor(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Selector'),
      ),
      body: Container(
        color: selectedColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile(
              title: Text('Pink'),
              value: Colors.pinkAccent,
              groupValue: selectedColor,
              onChanged: (color) => changeColor(color as Color),
            ),
            RadioListTile(
              title: Text('Yellow'),
              value: Colors.amber,
              groupValue: selectedColor,
              onChanged: (color) => changeColor(color as Color),
            ),
            RadioListTile(
              title: Text('Purple'),
              value: Colors.purple,
              groupValue: selectedColor,
              onChanged: (color) => changeColor(color as Color),
            ),
          ],
        ),
      ),
    );
  }
}
