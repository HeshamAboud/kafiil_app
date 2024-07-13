import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kafiil_app/features/who_iam/widgets/gender.dart';
import 'package:kafiil_app/features/who_iam/widgets/midea.dart';
import 'package:kafiil_app/features/who_iam/widgets/picture.dart';
import 'package:kafiil_app/features/who_iam/widgets/sallary.dart';
import 'package:kafiil_app/features/who_iam/widgets/skils.dart';
import 'package:kafiil_app/features/who_iam/widgets/user_type.dart';
import '../../../../core/components/components.dart';
import '../home_screen/birh.dart';

class WhoIam extends StatefulWidget {
  const WhoIam({super.key});

  @override
  State<WhoIam> createState() => _WhoIamState();
}

class _WhoIamState extends State<WhoIam> {
  TextEditingController aboutController = TextEditingController();

  TextEditingController skillsController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();
  List<String> listItem = ["Seller", "Buyer", "Both"];
  String selectedValue = "Seller";
  bool click = false;

  @override
  void initState() {
    // TODO: implement initState
    firstNameController.text = "Mahmoud";
    lastNameController.text = "Mohamed";
    emailController.text = "mahmoud47@gmail.com";
    passwordController.text = "123456789";
    aboutController.text =
        "Lorem ipsum dolor sit amet consectetur. Odio urna sed velit et sed quis. Enim ut sed. sed quis. Enim ut sed.";

    super.initState();
  }

  bool _isObscure = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 17.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Who I Am ",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
                Picture(),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 180.w,
                      child: CustomFormFieldColumn1(
                        text: "first Name",
                        controller: firstNameController,
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 180.w,
                      child: CustomFormFieldColumn1(
                        text: "last Name",
                        controller: lastNameController,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomFormFieldColumn1(
                  text: "Email Address",
                  controller: emailController,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 68.h,
                      child: TextField(
                        obscureText: _isObscure,
                        controller: passwordController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF9F9F9)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF9F9F9)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF9F9F9)),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF9F9F9),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
               UserType(),
                SizedBox(
                  height: 15.h,
                ),
                CustomFormFieldColumn1(
                  text: "About",
                  h: 150.h,
                  controller: aboutController,
                ),
                Sallary(),
                SizedBox(
                  height: 15.h,
                ),
                BirthDateWidget2(),
                SizedBox(
                  height: 15.h,
                ),
                Gender(),
                SizedBox(
                  height: 15.h,
                ),
                Skils(),
                SizedBox(
                  height: 15.h,
                ),
                Midea()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
