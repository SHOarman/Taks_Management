import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:taksmanager/Core/route/route.dart';
import 'package:taksmanager/utili/color/colors.dart';

class Nev_Button extends StatefulWidget {
  const Nev_Button({super.key, this.SelectIndex});

  final SelectIndex;

  @override
  State<Nev_Button> createState() => _Nev_ButtonState();
}

class _Nev_ButtonState extends State<Nev_Button> {
  int myindex=0;
  @override
  void initState() {
    myindex=widget.SelectIndex;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    List<String> title = ["My Tasks", 'Add Task', 'Profile'];
    List<String> icon = [
      "assets/icon/hmemenu.svg",
      'assets/icon/add.svg',
      'assets/icon/profile (2).svg',
    ];
    return Container(
      height: 80,

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 24,
            spreadRadius: 0,
            color: Color(0xff00000026),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(title.length, (index) {
          return Column(
            children: [
              GestureDetector(

                onTap: (){
                  setState(() {
                    myindex=index;

                  });

                  if(myindex==0){
                    Get.toNamed(AppRoute.home);
                  }else if(myindex==1){
                    Get.toNamed(AppRoute.addtaks);
                  }else{
                    Get.toNamed(AppRoute.profile);
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration:myindex == index
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          color: AppColor.pamariye,
                        )
                      : null,
                  child: SvgPicture.asset(
                    icon[index],
                    colorFilter: ColorFilter.mode(
                      myindex == index ? Colors.white : Colors.red,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),

              Text(title[index]),
            ],
          );
        }),
      ),
    );
  }
}
