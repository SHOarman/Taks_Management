import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taksmanager/Core/route/route.dart';
import 'package:taksmanager/presention/wedgit/coustm_Button/coustm_Button.dart';
import 'package:taksmanager/utili/ststic_String/static_String.dart';

import '../../wedgit/coustom_TextFrom/coustom_TextFrom.dart';

class Emailverify extends StatelessWidget {
  const Emailverify({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StaticString.verifyemail,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(StaticString.wellsendaverification),
              SizedBox(height: 10),
              Text(StaticString.email),
              SizedBox(height: 8),

              CoustomTextfrom_Screen(
                controller: emailController,
                hintTextl: "Enter Your Email",
              ),

              SizedBox(height: 10),

              CoustmButton(
                title: "Send OTP",
                onTap: () {
                  Get.toNamed(AppRoute.confromem);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
