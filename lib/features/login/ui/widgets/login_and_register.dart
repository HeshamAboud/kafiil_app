import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kafiil_app/features/register/ui/screen/Register.dart';

import '../../../../core/components/components.dart';

class LoginAndRegister extends StatelessWidget {
  const LoginAndRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(onPressed: (){},child: Text("Login",style: TextStyle(color: Colors.white),),color: Color(0xFF1DBF73),),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don’t have an account ? ",style: TextStyle(color: Colors.grey)),
            TextButton(onPressed:(){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterScreen()),
            );} , child: Text("Register ",style: TextStyle(color: Color(0xFF1DBF73))),)
          ],
        )
      ],
    );
  }
}
