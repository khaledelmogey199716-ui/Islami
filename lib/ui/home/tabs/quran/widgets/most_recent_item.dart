import 'package:flutter/material.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';

class MostRecentItem extends StatelessWidget {
  const MostRecentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 17,top: 7,bottom: 7),
      decoration: BoxDecoration(
        color: ColorsManager.goldColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Al-Anbiya",
                style: TextStyle(
                  color: ColorsManager.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "الأنبياء",
                style: TextStyle(
                  color: ColorsManager.blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "112 Verses",
                style: TextStyle(
                  color: ColorsManager.blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Image.asset(AssetsManager.mostRecent)
        ],
      ),
    );
  }
}
