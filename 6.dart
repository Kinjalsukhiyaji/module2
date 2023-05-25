//create an application to display n text-field where n is number input by user.
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic TextField',
      home: dynamictextfield(),
    );
  }
}
class dynamictextfield extends StatefulWidget {
  const dynamictextfield({Key? key}) : super(key: key);

  @override
  State<dynamictextfield> createState() => _dynamictextfieldState();
}

class _dynamictextfieldState extends State<dynamictextfield> {
  int _numTextfield = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic TextField'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Number of Textfields'
              ),
              onChanged: (value) {
                setState(() {
                  _numTextfield = int.tryParse(value) ?? 0;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _numTextfield,
                itemBuilder: (BuildContext contex , int index) {
                  return Padding(
                    padding: EdgeInsets.all(8),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Textfield ${index + 1 }',
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}