import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';

class SuraItem extends StatelessWidget {
  const SuraItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(AssetsManager.suraNumber),
            Text("1",style: TextStyle(
              color: ColorsManager.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.w700
            ),)

          ],
        ),
        SizedBox(width: 24,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Al-Fatiha",style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: ColorsManager.whiteColor
              ),),
              Text("7 Verses",style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: ColorsManager.whiteColor
              ),)
            ],
          ),
        ),
        Text("الفاتحة",style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: ColorsManager.whiteColor
        ),)
      ],
    );
  }
}
