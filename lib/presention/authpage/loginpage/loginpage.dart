import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taksmanager/Core/route/route.dart';
import 'package:taksmanager/utili/color/colors.dart';
import 'package:taksmanager/utili/ststic_String/static_String.dart';
import '../../../Core/general_Controler/general_Controler.dart';
import '../../wedgit/coustm_Button/coustm_Button.dart';
import '../../wedgit/coustom_TextFrom/coustom_TextFrom.dart';

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    var general_C0ntroler = Get.find<General_ControlerScreen>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(StaticString.welcomeBack),
            Text(StaticString.stayproductive),

            //===================Enter Your Email==================================
            SizedBox(height: 10),
            Text("Email"),

            CoustomTextfrom_Screen(
              controller: emailController,
              hintTextl: "Enter your Email",
            ),

            //===================Enter Your Email==================================
            SizedBox(height: 10),
            Text("Your password"),
            CoustomTextfrom_Screen(
              controller: passController,
              hintTextl: "Enter your password",
              isSecces: true,
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Obx(() {
                  return Checkbox(
                    value: general_C0ntroler.isCheck.value,
                    onChanged: (Value) {
                      general_C0ntroler.isCheck.value = Value!;
                    },
                  );
                }),
                Text(StaticString.rememberme),
              ],
            ),

            // Row(
            //   children: [
            //
            //
            //     SvgPicture.asset(
            //       "assets/icon/icone.svg"
            //
            //     ),
            //
            //     SizedBox(width: 5,),
            //     Text(StaticString.rememberme)
            //   ],
            // ),
            Row(
              children: [
                Expanded(child: Divider()),
                SizedBox(width: 5),
                Text(StaticString.oR),
                SizedBox(width: 5),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(StaticString.donthaveanaccount),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoute.creates);
                  },
                  child: Text(
                    StaticString.signUp,
                    style: TextStyle(color: AppColor.pamariye),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            CoustmButton(title: "Log In", onTap: () {
              Get.toNamed(AppRoute.home);
            }),
          ],
        ),
      ),
    );
  }
}
