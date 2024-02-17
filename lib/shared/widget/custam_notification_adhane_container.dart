import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustamNotificationAdhaneContainer extends StatelessWidget {
  const CustamNotificationAdhaneContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        height: 270.h,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6), // Set the shadow color
              spreadRadius: 5, // Set how far the shadow spreads
              blurRadius: 7, // Set the blur radius
              offset: const Offset(0, 3), // Set the offset of the shadow
            ),
          ],
          color: const Color(0xffFBF8EF),
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}
