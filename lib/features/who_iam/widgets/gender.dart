import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool _isMaleSelected = true;
  bool _isFemaleSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "Gender",
        style: TextStyle(color: Colors.grey),
      ),
      Row(
        children: <Widget>[
          Checkbox(
            value: _isMaleSelected,
            activeColor: Colors.green,
            onChanged: (newValue) {
              setState(() {
                _isMaleSelected = newValue!;
                // You can add any additional logic here
              });
            },
          ),
          Text("Male"),

          Checkbox(
            value: _isFemaleSelected,
            activeColor: Colors.green,
            onChanged: (newValue) {
              setState(() {
                _isFemaleSelected = newValue!;
                // You can add any additional logic here
              });
            },
          ),
          Text("female"),

        ],
      ),
    ],);
  }
}
