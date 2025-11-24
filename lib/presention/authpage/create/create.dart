import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taksmanager/Core/route/route.dart';
import 'package:taksmanager/presention/wedgit/coustom_TextFrom/coustom_TextFrom.dart';
import 'package:taksmanager/utili/color/colors.dart';
import 'package:taksmanager/utili/ststic_String/static_String.dart';
import '../../../Core/general_Controler/general_Controler.dart';
import '../../wedgit/coustm_Button/coustm_Button.dart';

class create extends StatelessWidget {
  const create({super.key});

  @override
  Widget build(BuildContext context) {
    var general_C0ntroler = Get.find<General_ControlerScreen>();
    TextEditingController FirstNameController = TextEditingController();
    TextEditingController LastNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController adressController = TextEditingController();
    TextEditingController passWordController = TextEditingController();
    TextEditingController ConpassWordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StaticString.createYourAccount,
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 5),
              Text(StaticString.joinTaskManagertoday),

              SizedBox(height: 10),
              //==================First Name=================================
              Text(StaticString.firstName),
              SizedBox(height: 5),
              CoustomTextfrom_Screen(
                controller: FirstNameController,
                hintTextl: "Enter First Your Name",
              ),

              //==================last  Name=================================
              Text(StaticString.lastName),
              SizedBox(height: 5),
              CoustomTextfrom_Screen(
                controller: LastNameController,
                hintTextl: "Enter  Last Your Name",
              ),
              //==================Email Addresh=================================
              Text(StaticString.email),
              SizedBox(height: 5),
              CoustomTextfrom_Screen(
                controller: emailController,
                hintTextl: "Enter Your Email",
              ),

              //================== Addresh=================================
              Text(StaticString.address),
              SizedBox(height: 5),
              CoustomTextfrom_Screen(
                controller: adressController,
                hintTextl: "Enter You Address",
              ),
              //================== passWord=================================
              Text(StaticString.passWord),
              SizedBox(height: 5),
              CoustomTextfrom_Screen(
                controller: passWordController,
                hintTextl: "Enter You passWord",
              ),
              //================== passWord=================================
              Text(StaticString.confirmpassword),
              SizedBox(height: 5),
              CoustomTextfrom_Screen(
                controller: ConpassWordController,
                hintTextl: "Enter You Confiram passWord",
              ),

              SizedBox(height: 10),

              Obx(() {
                return Row(
                  children: [
                    Checkbox(
                      value: general_C0ntroler.isCondication.value,
                      onChanged: (Value) {
                        general_C0ntroler.isCondication.value = Value!;
                      },
                    ),
                    Text(StaticString.iagreetotheTerms),
                  ],
                );
              }),
              SizedBox(height: 10),

              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(StaticString.oR),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Text(StaticString.alreadyhaveanaccount),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoute.logine);
                    },
                    child: Text(
                      StaticString.logLn,
                      style: TextStyle(color: AppColor.pamariye),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: CoustmButton(
          title: "Continue ",
          onTap: () {
            Get.toNamed(AppRoute.emailverify);
          },
        ),
      ),
    );
  }
}
