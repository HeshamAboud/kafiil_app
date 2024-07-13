import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Skils extends StatelessWidget {
  const Skils({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Skails',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          height: 150.0,
          decoration: BoxDecoration(
            color: Color(0xFFF9F9F9),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                height: 50.h,
                width: 160.w,
                decoration: BoxDecoration(
                  color: Color(0xFFE9F9F1),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Video Production',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    SvgPicture.asset("assets/Vector1.svg"),
                  ],
                ),
              ),
              Container(
                height: 50.h,
                width: 160.w,
                decoration: BoxDecoration(
                  color: Color(0xFFE9F9F1),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Video Production',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    SvgPicture.asset("assets/Vector1.svg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
