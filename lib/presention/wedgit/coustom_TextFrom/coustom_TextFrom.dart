
import 'package:flutter/material.dart';
import 'package:taksmanager/utili/color/colors.dart';


class CoustomTextfrom_Screen extends StatelessWidget {
  const CoustomTextfrom_Screen({super.key, required this.controller, required this.hintTextl, this.isSecces=false});
 final TextEditingController controller;
 final String hintTextl;
 final bool isSecces;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: isSecces?Icon(Icons.visibility_off):null,
        hintText: hintTextl,
        fillColor: AppColor.white,
        focusColor: AppColor.white,
        filled: true,
        enabled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color:AppColor.pamariye),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.white),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.white),
        ),


      ),
    );
  }
}
