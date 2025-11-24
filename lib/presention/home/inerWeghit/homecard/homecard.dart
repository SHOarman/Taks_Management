import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taksmanager/utili/color/colors.dart';
import 'package:taksmanager/utili/ststic_String/static_String.dart';

class Homecard extends StatelessWidget {
  const Homecard({super.key, required this.text, required this.des});
  final String text;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 24,
            blurStyle: BlurStyle.outer,
            color: Colors.black12,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -80,
            top: -80,

            child: Transform(
              transform: Matrix4.skew(40, 10),
              child: Image.asset("assets/covepic/Frame 2.png"),
            ),
          ),

          Positioned(
            left: -26,
            bottom: 0,

            child: Transform(
              transform: Matrix4.skew(40, 10),
              child: Image.asset("assets/covepic/Frame 2.png"),
            ),
          ),

          Positioned(
            left: -20,
            bottom: 25,

            child: Transform(
              transform: Matrix4.skew(40, 10),
              child: Image.asset("assets/covepic/Frame 2.png"),
            ),
          ),

          Positioned(
            top: 8,
            left: 10,
            right: 20,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset("assets/icon/svgtaks.svg"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,

                  child: Text(des),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
