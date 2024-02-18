import 'package:azkar/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustamAzkarList extends StatefulWidget {
  const CustamAzkarList({super.key});

  @override
  State<CustamAzkarList> createState() => _CustamAzkarListState();
}

List<String> azkarName = [
  "أذكار الصباح",
  "أذكار المساء",
  "أذكار الاستيقاذ",
  "أذكار النوم",
  "تسابيح ما بعد الصلاة",
  "الصلاة علي النبي",
];

class _CustamAzkarListState extends State<CustamAzkarList> {
  bool visibleToggle = false;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 55.h,
            padding: EdgeInsets.only(left: 30.w, right: 40.w),
            margin: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              bottom: 30.h,
            ),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6), // Set the shadow color
                    spreadRadius: 3, // Set how far the shadow spreads
                    blurRadius: 7, // Set the blur radius
                    offset: const Offset(0, 5), // Set the offset of the shadow
                  ),
                ],
                border: Border.all(
                  color: visibleToggle == false
                      ? Colors.transparent
                      : Color(0xffA85000),
                ),
                color: visibleToggle == false
                    ? SharedColor.mainBrown
                    : Colors.white,
                borderRadius: BorderRadius.circular(30.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "الاذكار",
                  style: TextStyle(
                    color: visibleToggle == false
                        ? Colors.white
                        : SharedColor.babyBrown,
                    fontFamily: "amiri",
                    fontSize: 20.w,
                  ),
                ),
                visibleToggle == false
                    ? IconButton(
                        onPressed: () {
                          visibleToggle = !visibleToggle;
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      )
                    : IconButton(
                        onPressed: () {
                          visibleToggle = !visibleToggle;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.arrow_drop_up,
                          color: visibleToggle == false
                              ? Colors.white
                              : SharedColor.babyBrown,
                        ),
                      )
              ],
            ),
          ),
          Visibility(
            visible: visibleToggle,
            child: Container(
              height: 500.h,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: 55.h,
                    padding: EdgeInsets.only(left: 20.w, right: 30.w),
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
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            azkarName[index],
                            style: TextStyle(
                              color: SharedColor.babyBrown,
                              fontFamily: "cairo",
                              fontSize: 20.w,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: SharedColor.babyBrown,
                            ))
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
