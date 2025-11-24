import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../utili/ststic_String/static_String.dart';

class General_ControlerScreen extends GetxController{

  RxBool isCheck =false.obs;
  RxBool isCondication= false.obs;
  RxInt onboardingIndex =0.obs;

  RxList<Map<String,String>>onLoading_Data=[
    {
    'imag':"assets/covepic/cover5.png",
   "title":StaticString.manageEverything,
    'des':StaticString.createcategorize



  },
    {
      'imag':"assets/covepic/cover4.png",
      "title":StaticString.focusonWhat,
      'des':StaticString.setpriorities



    },
    {
      'imag':"assets/covepic/Frame (3).png",
      "title":StaticString.visualizeProgress,
      'des':StaticString.monitorcompletedtasks



    }
  ].obs;
   Rx<PageController> pageController = PageController().obs;
}