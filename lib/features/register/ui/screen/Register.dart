import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kafiil_app/core/components/components.dart';
import 'package:kafiil_app/features/register/ui/widgets/screen_prograss.dart';
import 'package:kafiil_app/features/register_with_personal_data/ui/screen/register_with_personal_data.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
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

                click
                    ? Container(
                        color: Colors.redAccent,
                        height: 30.h,
                        width: 300.w,
                        child: Row(
                          children: [
                            Icon(Icons.warning_amber_outlined),
                            Text("Fill the required fields")
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
                ProgressIndicatorWidget(),
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
                CustomFormFieldColumn1(
                  text: "Password",
                  controller: passwordController,
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomFormFieldColumn1(
                  text: "Confirm Password",
                  controller: confirmPasswordController,
                ),
                SizedBox(
                  height: 15.h,
                ),
                buildDropdown(
                  itemList: listItem,
                  selectedValue: selectedValue,
                  title: "User Type",
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value.toString();
                    });
                  },
                  context: context,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                          width: 180.w,
                          height: 80.h,
                          child: DefaultButton(
                            onPressed: () {
                              setState(() {
                                lastNameController.text==""||firstNameController.text==""||emailController.text==""||passwordController.text==""||confirmPasswordController.text==""?click=true:click=false;


                              });
                              if(click==true){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => RegisterWithPersonalData()));
                              }
                          },
                            child: Text("Next",style: TextStyle(color: Colors.white),),
                            color: Colors.green,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
