import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/theme/image.dart';
import 'package:azkar/shared/widget/custam_container_quran_screen.dart';
import 'package:azkar/shared/widget/custam_list_quran.dart';
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
      backgroundColor: const Color(0xffFAF6EB),
      appBar: AppBar(
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
              // ignore: deprecated_member_use
              color: SharedColor.mainBrown,
              height: 20.h,
              width: 20.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: CustomScrollView(
          slivers: [
            const CustamContainerQuranScreen(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            const CustamListQuran(),
          ],
        ),
      ),
    );
  }
}
