import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:taksmanager/Core/route/route.dart';


import 'Core/definceny_injication/definceny_injication.dart';

void main(){
  DependencyInjection.bindings();

  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp (
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.SlashScreen,
      getPages: AppRoute.mypage,


    );
  }
}


