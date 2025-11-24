import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taksmanager/Core/route/route.dart';
import 'package:taksmanager/presention/wedgit/coustm_Button/coustm_Button.dart';
import 'package:taksmanager/utili/ststic_String/static_String.dart';
import 'package:pinput/pinput.dart';

class Confromemail extends StatelessWidget {
  const Confromemail({super.key});

  @override
  Widget build(BuildContext context) {
    var defaultPinTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              StaticString.code,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(StaticString.pleaseenterthecode),

            //=================Pinput field=================================
            SizedBox(height: 10),
            Pinput(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // // focusedPinTheme: defaultPinTheme.copyWith(
              // //   decoration: defaultPinTheme.decoration!.copyWith(
              // //     borderRadius: BorderRadius.circular(8),
              //     border: Border.all(color: AppColor.pamariye),
              //   ),
              //),
              length: 6,
            ),

            SizedBox(height: 10),

            CoustmButton(
              title: "Confirm",
              onTap: () {
                Get.toNamed(AppRoute.logine);
              },
            ),
          ],
        ),
      ),
    );
  }
}
