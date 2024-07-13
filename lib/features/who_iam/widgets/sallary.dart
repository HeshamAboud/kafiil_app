import 'package:flutter/material.dart';

class Sallary extends StatelessWidget {
  const Sallary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Salary',
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10.0),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        height: 60.0,
        decoration: BoxDecoration(
          color: Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(
              'SAR 4500',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ],);
  }
}
