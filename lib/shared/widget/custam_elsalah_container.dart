import 'package:azkar/shared/theme/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustamElsalahContainer extends StatelessWidget {
  const CustamElsalahContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(Assets.Islam6938153),
          opacity: 0.8,
        ),
      ),
    );
  }
}
