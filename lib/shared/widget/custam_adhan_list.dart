import 'package:azkar/shared/method/convert_number.dart';
import 'package:azkar/shared/method/get_adhan_time_method.dart';
import 'package:azkar/shared/method/scalfactor_method.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> adhanName = const [
  "الفجر",
  "الشروق",
  "الظهر",
  "العصر",
  "المغرب",
  "العشاء",
];

class CustamAdhanList extends StatelessWidget {
  const CustamAdhanList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        height: 290.h,
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
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: getAdhanTimeMethod().length,
          itemBuilder: (context, index) {
            return Container(
              height: 45.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: const Color(0xffFBF8EF)),
              child: ListTile(
                leading: const ImageIcon(AssetImage("assets/volume.png")),
                title: Text(
                  adhanName[index],
                  style: TextStyle(
                    fontFamily: "amiri",
                    color: SharedColor.babyBrown,
                    fontSize: getResponsiveFont(context, fontSize: 20),
                  ),
                ),
                trailing: Text(
                  replaceNumbers(getAdhanTimeMethod()[index]),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: "amiri",
                    color: SharedColor.babyBrown,
                    fontSize: getResponsiveFont(context, fontSize: 20),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
