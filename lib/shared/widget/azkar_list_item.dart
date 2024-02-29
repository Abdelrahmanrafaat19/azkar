import 'package:azkar/shared/method/convert_number.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/widget/icon_in_azkar.dart';
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
        padding: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          color: SharedColor.whtieCream,
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
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: SharedColor.mainBrown,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Text(
                "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.w,
                  color: Colors.white,
                  fontFamily: "cairo",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconInAzkar(
                  widget: const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
                widget.counter > 0
                    ? IconInAzkar(
                        widget: Text(
                        replaceNumbers(widget.counter.toString()),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: "cairo",
                          color: Colors.white,
                        ),
                      ))
                    : const Icon(
                        Icons.task_alt,
                        color: Colors.green,
                        size: 35,
                        shadows: <Shadow>[
                          Shadow(color: Colors.green, blurRadius: 15.0)
                        ],
                      ),
                IconInAzkar(
                  widget: const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ),
                ),
                IconInAzkar(
                  widget: const Icon(
                    Icons.copy,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
