import 'package:azkar/shared/method/convert_number.dart';
import 'package:azkar/shared/method/scalfactor_method.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AzkarListItem extends StatefulWidget {
  int arrange, counter;
  AzkarListItem({
    super.key,
    required this.arrange,
    required this.counter,
  });

  @override
  State<AzkarListItem> createState() => _AzkarListItemState();
}

class _AzkarListItemState extends State<AzkarListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      onTap: () {
        if (widget.counter > 0) {
          widget.counter--;
          setState(() {});
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: SharedColor.whtieCream,
          border: Border.all(
            color: SharedColor.babyBrown,
          ),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: widget.counter == 0
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6), // Set the shadow color
                    spreadRadius: 5, // Set how far the shadow spreads
                    blurRadius: 7, // Set the blur radius
                    offset: const Offset(0, 3), // Set the offset of the shadow
                  ),
                ]
              : null,
        ),
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                replaceNumbers(widget.arrange.toString()),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getResponsiveFont(context, fontSize: 20),
                  color: SharedColor.mainBrown,
                  fontFamily: "cairo",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِاللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.",
                style: TextStyle(
                  fontSize: getResponsiveFont(context, fontSize: 15),
                  color: SharedColor.mainBrown,
                  fontFamily: "cairo",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: widget.counter > 0
                  ? Text(
                      replaceNumbers(widget.counter.toString()),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: getResponsiveFont(context, fontSize: 15),
                        color: SharedColor.mainBrown,
                        fontFamily: "cairo",
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  : const Icon(
                      Icons.task_alt,
                      color: Colors.green,
                      size: 35,
                      shadows: <Shadow>[
                        Shadow(color: Colors.green, blurRadius: 15.0)
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
