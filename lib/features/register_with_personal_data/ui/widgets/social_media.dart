import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  bool face = false;
  bool twiter = false;
  bool link = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
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
