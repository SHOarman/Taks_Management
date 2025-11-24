import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:taksmanager/utili/color/colors.dart';
import 'package:taksmanager/utili/ststic_String/static_String.dart';

import '../inerWeghit/coustmsmalbutton/coustmsmalbutton.dart';

class Taksdetels extends StatelessWidget {
  const Taksdetels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Taksdetels"),
        backgroundColor: AppColor.bc,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///===================taks detels
              Row(
                children: [
                  SvgPicture.asset("assets/icon/tasktitle.svg"),
                  SizedBox(width: 10),
                  Text(StaticString.tastTitle),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(StaticString.designLanding),
              ),
              SizedBox(height: 16),
              Divider(height: 1, color: AppColor.pamariye),
              SizedBox(height: 16),

              /////================taks desicpation===================
              Row(
                children: [
                  SvgPicture.asset("assets/icon/tasktitle.svg"),
                  SizedBox(width: 10),
                  Text(StaticString.description),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(StaticString.createaclean),
              ),
              SizedBox(height: 16),
              Divider(height: 1, color: AppColor.pamariye),
              SizedBox(height: 16),

              ///====================coustom icon==========================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Coustmsmalbutton(
                    title: 'Delet',
                    ontap: () {},
                    icon: "assets/icon/delet.svg",
                    bcollor: AppColor.red,
                    fillcoloor: AppColor.pamariye,
                  ),

                  Coustmsmalbutton(
                    title: 'Edit',
                    ontap: () {},
                    icon: "assets/icon/edit.svg",
                    bcollor: AppColor.pamariye,
                    fillcoloor: AppColor.red,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
