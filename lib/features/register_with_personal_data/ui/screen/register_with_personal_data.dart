import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kafiil_app/features/home_screen/home_screen.dart';
import 'package:kafiil_app/features/register/ui/widgets/screen_prograss.dart';
import 'package:kafiil_app/features/register_with_personal_data/ui/widgets/sallary_widgets.dart';
import 'package:kafiil_app/features/register_with_personal_data/ui/widgets/screen_progress.dart';
import 'package:kafiil_app/features/register_with_personal_data/ui/widgets/social_media.dart';

import '../../../../core/components/components.dart';
import '../widgets/birth_date.dart';
import '../widgets/selectGender.dart';

class RegisterWithPersonalData extends StatefulWidget {
  const RegisterWithPersonalData({super.key});

  @override
  State<RegisterWithPersonalData> createState() =>
      _RegisterWithPersonalDataState();
}

class _RegisterWithPersonalDataState extends State<RegisterWithPersonalData> {
  TextEditingController aboutController = TextEditingController();

  TextEditingController skillsController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();
  List<String> listItem = ["Seller", "Buyer", "Both"];
  String selectedValue = "Seller";
  bool click = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const BackWidget(text: "Register"),

                // click
                //     ? Container(
                //   color: Colors.redAccent,
                //   height: 30.h,
                //   width: 300.w,
                //   child: Row(
                //     children: [
                //       Icon(Icons.warning_amber_outlined),
                //       Text("Fill the required fields")
                //     ],
                //   ),
                // )
                //     : SizedBox.shrink(),
                ProgressIndicatorWidget2(),
                Center(
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
                ),

                SizedBox(
                  height: 15.h,
                ),
                CustomFormFieldColumn1(
                  text: "About",
                  h: 150.h,
                  controller: aboutController,
                ),
                SizedBox(
                  height: 15.h,
                ),
                SalaryWidget(),
                SizedBox(
                  height: 15.h,
                ),
                BirthDateWidget(),
                SizedBox(
                  height: 15.h,
                ),
                Selectgender(),
                SizedBox(
                  height: 15.h,
                ),

                CustomFormFieldColumn1(
                  text: "Skills",
                  h: 150.h,
                  controller: skillsController,
                ),
                SizedBox(
                  height: 15.h,
                ),
                SocialMedia(),
                DefaultButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text("Submit",style: TextStyle(color: Colors.white),),
                  color: Colors.green,
                ),
                SizedBox(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
