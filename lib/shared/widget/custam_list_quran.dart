import 'package:azkar/module/surh_screen.dart';
import 'package:azkar/shared/method/convert_number.dart';
import 'package:azkar/shared/method/scalfactor_method.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/quran.dart' as quran;

class CustamListQuran extends StatelessWidget {
  const CustamListQuran({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: quran.totalSurahCount,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 10.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: const Color(0xffF6F0E4)),
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SurhScreen(
                surahNumber: index + 1,
              ),
            )),
            child: ListTile(
              leading: Text(
                replaceNumbers("${index + 1}"),
                style: TextStyle(
                    fontSize: getResponsiveFont(context, fontSize: 20),
                    color: Colors.grey),
              ),
              title: Text(
                quran.getSurahNameArabic(index + 1),
                style: TextStyle(
                  fontFamily: "amiri",
                  color: SharedColor.babyBrown,
                  fontSize: getResponsiveFont(context, fontSize: 20),
                ),
              ),
              trailing: ImageIcon(
                quran.getPlaceOfRevelation(index + 1) == "Makkah"
                    ? const AssetImage(
                        "assets/kaaba.png",
                      )
                    : const AssetImage("assets/mosque.png"),
                color: Colors.grey,
                size: 40.w,
              ),
              subtitle: Text(
                "رقم الجزء ${replaceNumbers("${quran.getJuzNumber(index + 1, 1)}")}",
                style: TextStyle(
                  fontFamily: "amiri",
                  color: Colors.grey,
                  fontSize: getResponsiveFont(context, fontSize: 15),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
