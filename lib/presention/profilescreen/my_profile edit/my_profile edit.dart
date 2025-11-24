import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taksmanager/presention/wedgit/myprofilebutton/myprofilebutton.dart';
import 'package:taksmanager/utili/color/colors.dart';

class MyProfile_edit extends StatelessWidget {
  const MyProfile_edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My ProFile")),
        backgroundColor: AppColor.bc,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: Stack(
                children: [
                  Positioned(
                    top: 4,
                    right: MediaQuery.of(context).size.width / 2.5,

                    //====================profileimage===============================
                    child: CircleAvatar(
                      maxRadius: 50,
                      backgroundImage: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1691095182210-a1b3c46a31d6?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //====================profileButton-===============================
            Column(
              children: [
                SizedBox(height: 6),
                Myprofilebutton(icon: "assets/icon/profile (2).svg", title: ''),
                SizedBox(height: 6),
                Myprofilebutton(icon: "assets/icon/gmail.svg", title: ''),
                SizedBox(height: 6),

                Myprofilebutton(icon: "assets/icon/location.svg", title: ''),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
