
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:taksmanager/presention/authpage/confromEmail/confromEmail.dart';
import 'package:taksmanager/presention/authpage/emailVerify/emailVerify.dart';
import 'package:taksmanager/presention/home/add_Taks/add_Taks.dart';
import 'package:taksmanager/presention/home/home.dart';
import 'package:taksmanager/presention/home/taksdetels/taksdetels.dart';
import 'package:taksmanager/presention/profilescreen/account_setting/account_setting.dart';
import 'package:taksmanager/presention/profilescreen/profilescreen.dart';

import '../../presention/authpage/loginpage/loginpage.dart';
import '../../presention/authpage/create/create.dart';
import '../../presention/onlodaing_Screen/onlodaing_Screen.dart';
import '../../presention/profilescreen/my_profile edit/my_profile edit.dart';
import '../../presention/slassh_Screen/slassh_Screen.dart';



class AppRoute{
  static const String SlashScreen="/SlashScreen";
  static const String Onloading="/Onloading";

  //=====================AuthPage====================================
  static const String logine="/logine";
  static const String creates='/creates';
  static const String emailverify='/emailverify';
  static const String confromem='/confromem';

  //=====================HomePage====================================
  static const String home='/home';
  //=====================taksdetels====================================
  static const String taksdetels='/taksdetels';
  static const String addtaks='/addtaks';
//=====================profile_Screen====================================
  static const String profile='/profile';
  static const String myprofilesetting='/myprofilesetting';
  static const String accountsetting='/accountsetting';




  static List<GetPage>mypage=[
    GetPage(name: SlashScreen, page:()=>SlasshScreen()),
    GetPage(name: Onloading, page:()=> OnboardingScreen()),

    //=====================AuthPage====================================
    GetPage(name: logine, page: ()=>LoginPageScreen()),
    GetPage(name: creates, page: ()=>create()),
    GetPage(name: emailverify, page: ()=>Emailverify()),
    GetPage(name: confromem, page: ()=>Confromemail()),

    //=====================HomePage====================================
    GetPage(name: home, page: ()=>Home()),

    //=====================taksdetels====================================

    GetPage(name: taksdetels, page: ()=>Taksdetels()),
    GetPage(name: addtaks, page: ()=>AddTaks()),

    //=====================profile_Screen====================================
    GetPage(name: profile, page: ()=>Profilescreen()),
    GetPage(name: myprofilesetting, page: ()=>MyProfile_edit()),
    GetPage(name: accountsetting, page: ()=>AccountSetting()),







  ];
}