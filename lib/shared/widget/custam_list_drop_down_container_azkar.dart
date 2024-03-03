import 'package:azkar/model/list_of_azkar.dart';
import 'package:azkar/module/azkar_dispaly.dart';
import 'package:azkar/shared/constant/azkar_data.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomListDropDownContainer extends StatefulWidget {
  String continerName;
  List<AzkarListModel> azkarData;
  CustomListDropDownContainer({
    super.key,
    required this.continerName,
    required this.azkarData,
  });

  @override
  State<CustomListDropDownContainer> createState() =>
      _CustomListDropDownContainerState();
}

class _CustomListDropDownContainerState
    extends State<CustomListDropDownContainer> {
  bool visibleToggle = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AzkarDispalyScreen(
              mainTitle: widget.continerName,
              azkarData: widget.azkarData,
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 55.h,
        padding: EdgeInsets.only(left: 20.w, right: 40.w),
        margin: EdgeInsets.only(
          left: 30.w,
          right: 30.w,
          bottom: 10.h,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: SharedColor.babyBrown),
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.continerName,
              style: TextStyle(
                color: SharedColor.babyBrown,
                fontFamily: "cairo",
                fontSize: 20.w,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: SharedColor.babyBrown,
            )
          ],
        ),
      ),
    );
  }
}
