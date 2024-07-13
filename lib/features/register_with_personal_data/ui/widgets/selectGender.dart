import 'package:flutter/material.dart';

class Selectgender extends StatefulWidget {
  const Selectgender({super.key});

  @override
  State<Selectgender> createState() => _SelectgenderState();
}

class _SelectgenderState extends State<Selectgender> {
  bool _isMaleSelected = false;
  bool _isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            // SizedBox(
            //   width: 100,
            //   height: 50,
            //   child: CheckboxListTile(
            //     title: Text('Male'),
            //     value: _isMaleSelected,
            //     onChanged: (newValue) {
            //       setState(() {
            //         _isMaleSelected = newValue!;
            //         // You can add any additional logic here
            //       });
            //     },
            //   ),
            // ),
            // CheckboxListTile(
            //   title: Text('Female'),
            //   value: _isFemaleSelected,
            //   onChanged: (newValue) {
            //     setState(() {
            //       _isFemaleSelected = newValue!;
            //       // You can add any additional logic here
            //     });
            //   },
            // ),
          ],
        ),
      ],
    );
  }
}
