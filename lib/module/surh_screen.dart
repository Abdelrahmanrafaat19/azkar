import 'package:azkar/shared/method/convert_number.dart';
import 'package:azkar/shared/theme/color.dart';

import 'package:azkar/shared/widget/icon_in_azkar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:quran/quran.dart' as quran;

// ignore: must_be_immutable
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
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Icon(
                Icons.arrow_back_ios,
                color: SharedColor.babyBrown,
                size: 30.w,
              ),
            ),
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
                Expanded(
                  flex: 6,
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
                const Expanded(child: Icon(Icons.favorite_border)),
              ],
            ),
          );
        },
      ),
    );
  }
}
