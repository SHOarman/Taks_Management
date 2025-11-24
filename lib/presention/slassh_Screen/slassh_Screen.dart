import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../onlodaing_Screen/onlodaing_Screen.dart';




class SlasshScreen extends StatefulWidget {
  const SlasshScreen({super.key});

  @override
  State<SlasshScreen> createState() => _SlasshScreenState();
}

class _SlasshScreenState extends State<SlasshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){

      Get.to(OnboardingScreen());
    });

  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/lotti/Untitled file.json"),

      ),

    );
  }
}
