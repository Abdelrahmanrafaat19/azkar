import 'package:azkar/shared/method/scalfactor_method.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/theme/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustamNotificationAdhaneContainer extends StatelessWidget {
  const CustamNotificationAdhaneContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        height: 200.h,
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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0.h, left: 20.w, right: 20.w),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "التنبيهات",
                      style: TextStyle(
                        color: SharedColor.babyBrown,
                        fontSize: getResponsiveFont(context, fontSize: 25),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: SvgPicture.asset(
                      Assets.CircleEllipsis,
                      // ignore: deprecated_member_use
                      color: SharedColor.babyBrown,
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                  const ImageIcon(
                    AssetImage(
                      Assets.Plus,
                    ),
                    color: SharedColor.babyBrown,
                    size: 30,
                  ),
                ],
              ),
            ),
            Text(
              "لم تضيف اي تنبهات بعد",
              style: TextStyle(
                color: SharedColor.mainBrown,
                fontFamily: "cairo",
                fontSize: getResponsiveFont(context, fontSize: 20),
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.w,
                right: 15.w,
                top: 8.h,
              ),
              child: Text(
                "هنا يمكنك إضافة تنبيهات خاص بك قبل و بعد كل صلاة مثل التذكير بالتحضير للصلاة أوإقانة الصلاة ووقت التهجد",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: SharedColor.mainBrown,
                  fontFamily: "cairo",
                  fontSize: getResponsiveFont(context, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
