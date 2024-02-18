import 'package:azkar/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListDropDownContainer extends StatefulWidget {
  const CustomListDropDownContainer({super.key});

  @override
  State<CustomListDropDownContainer> createState() =>
      _CustomListDropDownContainerState();
}

class _CustomListDropDownContainerState
    extends State<CustomListDropDownContainer> {
  bool visibleToggle = false;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 55.h,
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            margin: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              bottom: 30.h,
            ),
            decoration: BoxDecoration(
                color: SharedColor.mainBrown,
                borderRadius: BorderRadius.circular(30.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "الاذكار",
                  style: TextStyle(
                    color: Colors.white,
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
                        icon: const Icon(
                          Icons.arrow_drop_up,
                          color: Colors.white,
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
                          "الاذكار",
                          style: TextStyle(
                            color: SharedColor.babyBrown,
                            fontFamily: "amiri",
                            fontSize: 20.w,
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
    ();
  }
}
