import 'package:azkar/shared/component/custam_button.dart';
import 'package:azkar/shared/method/scalfactor_method.dart';
import 'package:azkar/shared/theme/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustamContainerQuranScreen extends StatelessWidget {
  const CustamContainerQuranScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(right: 15.w),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "نوع السورة",
              style: TextStyle(
                fontFamily: "cairo",
                color: Colors.white,
                fontSize: getResponsiveFont(
                  context,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "سورة البقرة",
              style: TextStyle(
                fontFamily: "amiri",
                color: Colors.white,
                fontSize: getResponsiveFont(
                  context,
                  fontSize: 25,
                ),
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "السورة رقم ١",
                  style: TextStyle(
                    fontFamily: "cairo",
                    color: Colors.white,
                    fontSize: getResponsiveFont(
                      context,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                custamButtom(
                    text: const Text(
                      "استمرار",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "cairo",
                      ),
                    ),
                    color: Colors.white,
                    paddingHersontal: 10.w,
                    paddingVertical: 5.h,
                    onTap: () {},
                    radius: 15.r)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
