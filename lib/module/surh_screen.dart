import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/theme/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/quran.dart' as quran;

class SurhScreen extends StatefulWidget {
  const SurhScreen({super.key});

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
            "سورة البقرة",
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
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: RichText(
                text: TextSpan(
                  children: [
                    for (int i = 1; i <= quran.getVerseCount(2); i++)
                      TextSpan(
                        text: quran.getVerse(2, i, verseEndSymbol: true),
                      ),
                  ],
                ),
              ),
            )
            /*     SliverList.builder(
              itemCount: quran.getVerseCount(2),
              itemBuilder: (context, index) {
                return Text(
                  quran.getVerse(2, index + 1, verseEndSymbol: true),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                );
              },
            ) */
          ],
        ));
  }
}
