import 'package:azkar/shared/method/convert_number.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/theme/image.dart';
import 'package:azkar/shared/widget/icon_in_azkar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/quran.dart' as quran;

class SurhScreen extends StatefulWidget {
  int surahNumber;
  SurhScreen({super.key, required this.surahNumber});

  @override
  State<SurhScreen> createState() => _SurhScreenState();
}

class _SurhScreenState extends State<SurhScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffE9E1D4),
        centerTitle: true,
        leadingWidth: 40.w,
        leading: Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: SvgPicture.asset(
            Assets.CircleEllipsis,
            // ignore: deprecated_member_use
            color: SharedColor.mainBrown,
            height: 20.h,
            width: 20.w,
          ),
        ),
        title: Text(
          quran.getSurahNameArabic(widget.surahNumber),
          style: TextStyle(
              fontFamily: "amiri",
              color: SharedColor.babyBrown,
              fontSize: 30.sp,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: SvgPicture.asset(
              Assets.BarsSort,
              // ignore: deprecated_member_use
              color: SharedColor.mainBrown,
              height: 20.h,
              width: 20.w,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: quran.getVerseCount(widget.surahNumber),
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
              color: const Color(0xffE9E1D4),
            )),
            child: Row(
              children: [
                const Expanded(child: Icon(Icons.favorite_border)),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    /* decoration: BoxDecoration(
                        color: SharedColor.mainBrown,
                        borderRadius: BorderRadius.circular(15.r)), */
                    child: Text(
                      quran.getVerse(widget.surahNumber, index + 1),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 18.w,
                        color: SharedColor.mainBrown,
                        fontFamily: "amiri",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: IconInAzkar(
                      widget: Text(
                    replaceNumbers("${index + 1}"),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "cairo",
                      color: Colors.white,
                    ),
                  )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
