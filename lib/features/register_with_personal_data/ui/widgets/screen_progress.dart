import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgressIndicatorWidget2 extends StatefulWidget {
  @override
  _ProgressIndicatorWidget2State createState() =>
      _ProgressIndicatorWidget2State();
}

class _ProgressIndicatorWidget2State extends State<ProgressIndicatorWidget2> {
  int currentStep = 1;

  void _nextStep() {
    setState(() {
      if (currentStep < 2) {
        currentStep++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(
                color: currentStep > 0 ? Colors.green : Colors.grey,
                thickness: 2,
              ),
            ),
            _buildStepIndicator(step: 1, label: 'Register'),
            Expanded(
              child: Divider(
                color: currentStep >=1 ? Colors.green : Colors.grey,
                thickness: 2,
              ),
            ),
            _buildStepIndicator(step: 2, label: 'Complete Data'),
            Expanded(
              child: Divider(
                color: currentStep > 1 ? Colors.green : Colors.grey,
                thickness: 2,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStepIndicator({required int step, required String label}) {
    return Column(
      children: [
        // Text(
        //   label,
        //   style: TextStyle(
        //     color: currentStep >= step ? Colors.green : Colors.grey,
        //   ),
        // ),
        Container(
          width: 50.w,
          height: 50.h,

          // Height of the circle
          decoration: BoxDecoration(
            color:   step == 1?Colors.green : Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color:  Colors.green  // Border color
              // Border width
            ),
          ),
          child: Center(
              child:step >= 2 ? Text(
                 '$step' ,
                style: TextStyle(color: Colors.green),
              ):SvgPicture.asset("assets/Vector.svg"),
          ),
        ),

      ],
    );
  }
}
