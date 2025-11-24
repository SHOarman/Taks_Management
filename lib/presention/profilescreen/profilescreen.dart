import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taksmanager/Core/route/route.dart';
import 'package:taksmanager/presention/wedgit/coustom_profile/coustom_profile.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

          Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.5,

                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        width: MediaQuery.of(context).size.width,
                        top: -30,
                        child: Image.asset(
                          "assets/covepic/profile.png",
                          fit: BoxFit.cover,
                        ),
                      ),

                      Positioned(
                        top: MediaQuery.of(context).size.height / 4.5,
                        left: MediaQuery.of(context).size.width / 2.5,

                        // height:MediaQuery.of(context).size.height / 3 ,
                        //  width:MediaQuery.of(context).size.width / 2  ,
                        child: CircleAvatar(
                          maxRadius: 50,
                          backgroundImage: NetworkImage(
                            "https://plus.unsplash.com/premium_photo-1691095182210-a1b3c46a31d6?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          ),
                        ),
                      ),

                      //Position
                    ],

                  ),

                ),
                SizedBox(height: 80,),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,


                  children: [
                    //---============Coustombutoon=======================================
                    CoustomProfile_Screen(title: "My Profile", onTap: (){
                      Get.toNamed(AppRoute.myprofilesetting);
                    }, icon:"assets/icon/profile.svg"),
                    SizedBox(height: 6,),
                    CoustomProfile_Screen(title: "Accound Setting", onTap: (){
                      Get.toNamed(AppRoute.accountsetting);
                    }, icon: "assets/icon/setting.svg"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text("More"),
                    ),
                    CoustomProfile_Screen(title: "Terms & Condition", onTap: (){}, icon: "assets/icon/tems.svg"),
                    CoustomProfile_Screen(title: "Privacy policy", onTap: (){}, icon: "assets/icon/taksmanu.svg"),
                    CoustomProfile_Screen(title: "Help/Support", onTap: (){}, icon: "assets/icon/Icons (2).svg"),
                    CoustomProfile_Screen(title: "Log Out", onTap: (){}, icon: "assets/icon/lets-icons_sign-out-squre.svg"),


                  ],

                ))
              ],

            ),


    );
  }
}
