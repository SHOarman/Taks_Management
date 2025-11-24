import 'package:flutter/material.dart';
import 'package:taksmanager/presention/wedgit/coustm_Button/coustm_Button.dart';
import 'package:taksmanager/presention/wedgit/coustom_TextFrom/coustom_TextFrom.dart';
import 'package:taksmanager/presention/wedgit/nev_button/nev_button.dart';
import 'package:taksmanager/utili/color/colors.dart';
import 'package:taksmanager/utili/ststic_String/static_String.dart';

class AddTaks extends StatelessWidget {
  const AddTaks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Nev_Button(SelectIndex: 1),
      appBar: AppBar(
        title: Text("Add Taks"),
        backgroundColor: AppColor.bc,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //==============text add heder========================================
            Text(StaticString.tastTitle),
            SizedBox(height: 5),
            CoustomTextfrom_Screen(
              controller: TextEditingController(),
              hintTextl: "Add your Text heder",
            ),

            //====================taks add descripotion==========================================
            Text(StaticString.description),
            SizedBox(height: 10),
            CoustomTextfrom_Screen(
              controller: TextEditingController(),
              hintTextl: "Add your descripiton here",
            ),

            //==============Cousstm button=-------=====================================
            SizedBox(height: 10),
            CoustmButton(title: "Save Taks", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
