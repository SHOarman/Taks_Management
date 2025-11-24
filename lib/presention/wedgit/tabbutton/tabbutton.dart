
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taksmanager/utili/color/colors.dart';

class SvgButtonsInContainer extends StatelessWidget {
  const SvgButtonsInContainer({super.key, required this.ontap1, required this.ontap2, required this.ontap3});
  final Function ontap1;
  final Function ontap2;
  final Function ontap3;


  @override
  Widget build(BuildContext context) {
    return

             Container(
               height: 100,
              decoration: BoxDecoration(

                color: AppColor.bc,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      ontap1();
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset("assets/icon/add.svg", height: 35,
                      width: 35,
                      color: Colors.blue,),


                        SizedBox(height: 6),
                        Text(
                          "My Taks",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),


                  GestureDetector(
                    onTap: () {
                      ontap2();


                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset("assets/icon/add.svg"
                          ,
                          height: 35,
                          width: 35,

                         // color: Colors.green,
                          color: Colors.purple,
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),


                  GestureDetector(
                    onTap: () {
                      ontap3();

                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                        'assets/icon/profile (2).svg',
                          height: 35,
                          width: 35,
                          color: Colors.purple,
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


      );
   }
}