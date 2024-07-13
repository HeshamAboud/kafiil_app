import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Midea extends StatefulWidget {
  const Midea({super.key});

  @override
  State<Midea> createState() => _MideaState();
}

class _MideaState extends State<Midea> {

  bool face = true;
  bool twiter = false;
  bool link = false; @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Favourite Social Media"),
        Row(
          children: [
            Checkbox(
              value: face,
              activeColor: Colors.green,
              onChanged: (newValue) {
                setState(() {
                  face = newValue!;
                  // You can add any additional logic here
                });
              },
            ),
            SvgPicture.asset("assets/path14.svg"),
            SizedBox(
              width: 5.w,
            ),
            Text("Facebock"),
          ],
        ),Row(
          children: [
            Checkbox(
              value: twiter,
              activeColor: Colors.green,
              onChanged: (newValue) {
                setState(() {
                  twiter = newValue!;
                  // You can add any additional logic here
                });
              },
            ),
            SvgPicture.asset("assets/twitter.svg"),
            SizedBox(
              width: 5.w,
            ),
            Text("Twitter"),
          ],
        ),Row(
          children: [
            Checkbox(
              value: link,
              activeColor: Colors.green,
              onChanged: (newValue) {
                setState(() {
                  link = newValue!;
                  // You can add any additional logic here
                });
              },
            ),
            SvgPicture.asset("assets/linkedin.svg"),
            SizedBox(
              width: 5.w,
            ),
            Text("Linkedin"),
          ],
        ),
      ],
    );
  }
}
