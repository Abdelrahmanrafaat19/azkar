import 'package:azkar/model/final_story_model.dart';
import 'package:azkar/module/story_bady.dart';
import 'package:azkar/shared/constant/ibrahem_data.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ListOfStories extends StatelessWidget {
  List<StoryData> data;
  ListOfStories({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return InkWell(
          focusColor: Colors.transparent,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => StoryBody(
                    data: data[index].storyBodyList, title: data[index].name),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            decoration: BoxDecoration(
              color: SharedColor.whtieCream,
              borderRadius: BorderRadius.circular(15.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6), // Set the shadow color
                  spreadRadius: 5, // Set how far the shadow spreads
                  blurRadius: 7, // Set the blur radius
                  offset: const Offset(0, 3), // Set the offset of the shadow
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            width: double.infinity,
            child: Row(
              children: [
                const ImageIcon(
                  AssetImage(
                    "assets/quran.png",
                  ),
                  color: SharedColor.babyBrown,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  data[index].name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.w,
                    color: SharedColor.babyBrown,
                    fontFamily: "cairo",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: SharedColor.babyBrown,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
