import 'package:flutter/material.dart';
import 'package:taksmanager/presention/home/inerWeghit/homecard/homecard.dart';
import 'package:taksmanager/presention/home/inerWeghit/profileSecation/profileSecation.dart';
import 'package:taksmanager/utili/color/colors.dart';
import 'package:taksmanager/utili/ststic_String/static_String.dart';
import '../wedgit/nev_button/nev_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Nev_Button(SelectIndex: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //=================================profileSecation=======================
              Profilesecation(),
              Text(
                StaticString.myatsks,
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //======================HomeCard 1st ====================================
              Homecard(
                text: StaticString.designLanding,
                des: StaticString.createaclean,
              ),
              SizedBox(height: 10),
              //======================HomeCard 2nd====================================
              Homecard(
                text: StaticString.designLanding,
                des: StaticString.design,
              ),

              SizedBox(height: 10),
              //======================HomeCard 3nd====================================
              Homecard(
                text: StaticString.organize,
                des: StaticString.buildreusable,
              ),

              SizedBox(height: 10),
              //======================HomeCard 4th====================================
              Homecard(text: StaticString.prepare, des: StaticString.createUI),

              SizedBox(height: 10),
              //======================HomeCard 5th====================================
              Homecard(
                text: StaticString.buildCalendar,
                des: StaticString.designavisual,
              ),
            ],
          ),
        ),
      ),

      // bottomNavigationBar:SvgButtonsInContainer(ontap1: (){
      //   Get.toNamed(AppRoute.taksdetels);
      // }, ontap2: (){}, ontap3:(){}),
      // //==================================tabbutton-=========================
    );
  }
}
