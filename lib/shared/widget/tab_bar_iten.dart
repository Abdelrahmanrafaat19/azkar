import 'package:azkar/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class TabBarItem extends StatefulWidget {
  int index;
  TabBarItem({super.key, required this.index});

  @override
  State<TabBarItem> createState() => _TabBarItemState();
}

class _TabBarItemState extends State<TabBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
      padding: EdgeInsets.only(
        top: 5.h,
        bottom: 5.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: SharedColor.babyBrown,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: TabBar(
        onTap: (value) => setState(() {
          widget.index = value;
        }),
        padding: EdgeInsets.zero,
        indicatorColor: Colors.transparent,
        dividerColor: Colors.transparent,
        tabs: [
          Tab(
            icon: Container(
              alignment: Alignment.center,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: widget.index == 0
                    ? SharedColor.mainBrown
                    : Colors.transparent,
              ),
              child: Text(
                "قصص الانبياء",
                style: TextStyle(
                  color:
                      widget.index == 0 ? Colors.white : SharedColor.babyBrown,
                  fontFamily: 'amiri',
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                ),
              ),
            ),
          ),
          Tab(
            icon: Container(
              alignment: Alignment.center,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: widget.index == 1
                    ? SharedColor.mainBrown
                    : Colors.transparent,
              ),
              child: Text(
                "قصص الانبياء",
                style: TextStyle(
                  color:
                      widget.index == 1 ? Colors.white : SharedColor.babyBrown,
                  fontFamily: 'amiri',
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                ),
              ),
            ),
          ),
          Tab(
            icon: Container(
              alignment: Alignment.center,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: widget.index == 2
                    ? SharedColor.mainBrown
                    : Colors.transparent,
              ),
              child: Text(
                "قصص الصحابة",
                style: TextStyle(
                  color:
                      widget.index == 2 ? Colors.white : SharedColor.babyBrown,
                  fontFamily: 'amiri',
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
