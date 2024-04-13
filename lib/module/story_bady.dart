import 'package:azkar/model/story_model.dart';
import 'package:azkar/shared/method/scalfactor_method.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryBody extends StatefulWidget {
  List<StoryBodyData> data;
  String title;
  StoryBody({super.key, required this.data, required this.title});

  @override
  State<StoryBody> createState() => _StoryBodyState();
}

class _StoryBodyState extends State<StoryBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: const Color(0xffE9E1D4),
        centerTitle: true,
        leadingWidth: 40.w,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Icon(
              Icons.arrow_back_ios,
              color: SharedColor.babyBrown,
              size: 30.w,
            ),
          ),
        ),
        title: Text(
          widget.title,
          style: TextStyle(
              fontFamily: "amiri",
              color: SharedColor.babyBrown,
              fontSize: 30.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.data.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                border: Border.all(
                  color: SharedColor.babyBrown,
                ),
                borderRadius: BorderRadius.circular(15.r)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.h),
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: SharedColor.mainBrown,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r),
                    ),
                  ),
                  child: Text(
                    widget.data[index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "amiri",
                      color: Colors.white,
                      fontSize: getResponsiveFont(context, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: SharedColor.whtieCream,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.r),
                      bottomRight: Radius.circular(15.r),
                    ),
                  ),
                  child: Text(
                    widget.data[index].answer,
                    style: TextStyle(
                      fontFamily: "amiri",
                      color: SharedColor.babyBrown,
                      fontSize: getResponsiveFont(context, fontSize: 20),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
