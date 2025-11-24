import 'package:get/get.dart';

import '../general_Controler/general_Controler.dart';


class DependencyInjection {

  static bindings(){

    Get.lazyPut(() => General_ControlerScreen());
  }
}