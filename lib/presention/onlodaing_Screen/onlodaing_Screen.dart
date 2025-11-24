
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taksmanager/Core/route/route.dart';
import 'package:taksmanager/utili/color/colors.dart';

import '../../Core/general_Controler/general_Controler.dart';
import '../wedgit/coustm_Button/coustm_Button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var generalController = Get.find< General_ControlerScreen>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 44, left: 20, right: 20),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  generalController.onboardingIndex.value=value;
                },
                controller: generalController.pageController.value,
                itemCount: generalController.onLoading_Data.length,
                itemBuilder: (context, index) {
                  return Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          generalController.onLoading_Data[index]["imag"] ?? "",
                        ),
                        SizedBox(height: 20),
                        Text(
                          generalController.onLoading_Data[index]["title"] ??
                              "",
                        ),
                        SizedBox(height: 10),
                        Text(
                          generalController.onLoading_Data[index]["des"] ?? "",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SmoothPageIndicator(
              controller: generalController.pageController.value,
              count: generalController.onLoading_Data.length,
              axisDirection: Axis.horizontal,
              effect: ExpandingDotsEffect(
                dotHeight: 12,
                activeDotColor: AppColor.pamariye,
              ),
            ),

            SizedBox(height: 42),

            // ElevatedButton(
            //   onPressed: () {
            //     onboardingController.pageController.value.nextPage(
            //       duration: Duration(seconds: 2),
            //       curve: Curves.decelerate,
            //     );
            //   },
            //   child: Icon(Icons.add_ic_call_outlined),
            // ),
            Obx(
                    () {

                  return CoustmButton(title:generalController.onboardingIndex.value==2?"Continue": "Next",
                      onTap: (){

                        if(generalController.onboardingIndex.value==2){
                          Get.toNamed(AppRoute.logine);
                        }else{

                          generalController.pageController.value.nextPage(
                            duration: Duration(seconds: 2),
                            curve: Curves.decelerate,
                          );
                        }



                      });
                }
            ),

            SizedBox(height: 24,)
          ],
        ),
      ),
    );
  }
}
