import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/theme/image.dart';
import 'package:azkar/shared/widget/custam_container_quran_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 40.w,
        leading: Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: SvgPicture.asset(
            Assets.CircleEllipsis,
            color: SharedColor.mainBrown,
            height: 20.h,
            width: 20.w,
          ),
        ),
        title: Text(
          "القرأن الكريم",
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
              color: SharedColor.mainBrown,
              height: 20.h,
              width: 20.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: const CustomScrollView(
          slivers: [
            CustamContainerQuranScreen(),
          ],
        ),
      ),
    );
  }
}

String replaceNumbers(String number) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const farsi = ['۰', '۱', '۲', '۳', '٤', '۵', '٦', '۷', '۸', '۹'];
  for (int i = 0; i < english.length; i++) {
    number = number.replaceAll(english[i], farsi[i]);
  }

  return number;
}
