import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taksmanager/utili/color/colors.dart';

class Myprofilebutton extends StatelessWidget {
  final String icon;
  final String title;
  const Myprofilebutton({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),

        border: Border.all(color: Colors.green),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 24,
            spreadRadius: 0,
            color: Colors.white,
          ),
        ],
      ),
      child: Row(
        children: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(icon),

        ), SizedBox(width: 5),Divider(color: AppColor.pamariye,),
          Text(title)],
      ),
    );
  }
}
