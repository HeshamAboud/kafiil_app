import 'package:flutter/material.dart';

class UserType extends StatefulWidget {
  const UserType({super.key});

  @override
  State<UserType> createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {

  bool Seller = true;
  bool Buyer = false;
  bool Both = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "User Type",
          style: TextStyle(color: Colors.grey),
        ),
        Row(
          children: <Widget>[
            Checkbox(
              value: Seller,
              activeColor: Colors.green,
              onChanged: (newValue) {
                setState(() {
                  Seller = newValue!;
                  // You can add any additional logic here
                });
              },
            ),
            Text("Seller"),
            Checkbox(
              value: Buyer,
              activeColor: Colors.green,
              onChanged: (newValue) {
                setState(() {
                  Buyer = newValue!;
                  // You can add any additional logic here
                });
              },
            ),
            Text("Buyer"),
            Checkbox(
              value: Both,
              activeColor: Colors.green,
              onChanged: (newValue) {
                setState(() {
                  Both = newValue!;
                  // You can add any additional logic here
                });
              },
            ),
            Text("Both"),
          ],
        ),
      ],
    );
  }
}
