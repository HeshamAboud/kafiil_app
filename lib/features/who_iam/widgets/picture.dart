import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Picture extends StatelessWidget {
  const Picture({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          // Circular profile image
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.green,
                width: 2.0,
              ),
            ),
            child: ClipOval(
              child: SvgPicture.asset(
                'assets/man-user.svg',
                // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Positioned green button
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
