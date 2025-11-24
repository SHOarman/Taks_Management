import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Coustmsmalbutton extends StatelessWidget {
  final String title;
  final Function ontap;
  final String icon;
  final Color bcollor;
  final Color fillcoloor;
  const Coustmsmalbutton({
    super.key,
    required this.title,
    required this.ontap,
    required this.icon,
    required this.bcollor,
    required this.fillcoloor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        padding: EdgeInsets.all(10),
        // height: 38,
        decoration: BoxDecoration(
          color: fillcoloor,
          border: Border.all(color: bcollor),
        ),
        child: Row(
          children: [SvgPicture.asset(icon), SizedBox(width: 10), Text(title)],
        ),
      ),
    );
  }
}
