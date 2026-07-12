import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/resources/assets_manager.dart';
import 'package:islami/core/resources/colors_manager.dart';
import 'package:islami/core/resources/strings_manager.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsManager.quranBackGround),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              AssetsManager.imageHeader,
              height: 0.2 * screenHeight,
              width: 0.75 * screenWidth,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
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
                    maxWidth: 55
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
            ),
            SizedBox(height: 20,),
            Text(StringsManager.mostRecently)
          ],
        ),
      ),
    );
  }
}
