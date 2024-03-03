import 'package:azkar/shared/method/convert_number.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/widget/icon_in_azkar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AzkarListItem extends StatefulWidget {
  int counter;
  String zkr;
  AzkarListItem({
    super.key,
    required this.zkr,
    required this.counter,
  });

  @override
  State<AzkarListItem> createState() => _AzkarListItemState();
}

class _AzkarListItemState extends State<AzkarListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              widget.zkr,
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
                  ? InkWell(
                      onTap: () {
                        if (widget.counter > 0) {
                          widget.counter--;
                          setState(() {});
                        }
                      },
                      child: IconInAzkar(
                          widget: Text(
                        replaceNumbers(widget.counter.toString()),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: "cairo",
                          color: Colors.white,
                        ),
                      )),
                    )
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
              InkWell(
                onTap: () {
                  Clipboard.setData(
                    ClipboardData(text: widget.zkr),
                  );
                },
                child: IconInAzkar(
                  widget: const Icon(
                    Icons.copy,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
