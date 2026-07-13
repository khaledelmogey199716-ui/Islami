import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/core/resources/strings_manager.dart';
import 'package:islami/ui/home/tabs/quran/widgets/most_recent_item.dart';
import 'package:islami/ui/home/tabs/quran/widgets/sura_item.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsManager.quranBackGround),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                AssetsManager.imageHeader,
                height: 0.15 * screenHeight,
                width: 0.75 * screenWidth,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              style: TextStyle(
                color: ColorsManager.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              enabled: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorsManager.blackColor.withValues(alpha: 0.7),
                prefixIconConstraints: BoxConstraints(
                  maxHeight: 55,
                  maxWidth: 55,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    AssetsManager.quranIcon,
                    height: 40,
                    width: 40,
                    colorFilter: ColorFilter.mode(
                      ColorsManager.goldColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: ColorsManager.goldColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: ColorsManager.goldColor),
                ),
                hintText: StringsManager.suraName,
                hintStyle: TextStyle(
                  color: ColorsManager.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              StringsManager.mostRecently,
              style: TextStyle(
                color: ColorsManager.whiteColor,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index) => MostRecentItem(),
                separatorBuilder: (context,index) =>SizedBox(width: 10,),
                itemCount: 10,
              ),
            ),
            SizedBox(height: 10),
            Text(StringsManager.surasList,style: TextStyle(
              color: ColorsManager.whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),),
            SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: ListView.separated(
                  itemBuilder: (context, index) => SuraItem(),
                  separatorBuilder: (context, index) => Divider(color: ColorsManager.whiteColor,),
                  itemCount: 10
              ),
            )
          ],
        ),
      ),
    );
  }
}
