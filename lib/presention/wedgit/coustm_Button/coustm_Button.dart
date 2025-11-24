
import 'package:flutter/cupertino.dart';
import 'package:taksmanager/utili/color/colors.dart';

 class CoustmButton extends StatelessWidget {
   const CoustmButton({super.key, required this.title, required this.onTap});
   final String title;
   final Function onTap;

   @override
   Widget build(BuildContext context) {
     return GestureDetector(
       onTap: (){
         onTap();
       },
      //child: Padding(
         // padding: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
          child: Container(
           height: 42,
           width: double.infinity,
           decoration: BoxDecoration(
             color: AppColor.pamariye,
             borderRadius: BorderRadius.circular(5)
           ),
           child: Center(child: Text(title)),
         ),
      // ),

     );

   }
 }
