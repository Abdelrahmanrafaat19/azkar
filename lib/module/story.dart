import "package:azkar/shared/widget/list_of_stories.dart";
import "package:azkar/shared/method/scalfactor_method.dart";
import "package:azkar/shared/theme/color.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30.w,
          ),
          centerTitle: true,
          title: Text(
            "قصص متنوعة",
            style: TextStyle(
              fontSize: getResponsiveFont(context, fontSize: 25),
              color: Colors.white,
              fontFamily: "cairo",
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 10.w,
                right: 10.w,
                top: 10.h,
              ),
              padding: EdgeInsets.only(
                top: 5.h,
                bottom: 5.h,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: SharedColor.babyBrown,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: TabBar(
                onTap: (value) => setState(() {
                  index = value;
                }),
                padding: EdgeInsets.zero,
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(
                    icon: Container(
                      alignment: Alignment.center,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: index == 0
                            ? SharedColor.mainBrown
                            : Colors.transparent,
                      ),
                      child: Text(
                        "قصص الانبياء",
                        style: TextStyle(
                          color:
                              index == 0 ? Colors.white : SharedColor.babyBrown,
                          fontFamily: 'amiri',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    icon: Container(
                      alignment: Alignment.center,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: index == 1
                            ? SharedColor.mainBrown
                            : Colors.transparent,
                      ),
                      child: Text(
                        "قصص الانبياء",
                        style: TextStyle(
                          color:
                              index == 1 ? Colors.white : SharedColor.babyBrown,
                          fontFamily: 'amiri',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    icon: Container(
                      alignment: Alignment.center,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: index == 2
                            ? SharedColor.mainBrown
                            : Colors.transparent,
                      ),
                      child: Text(
                        "قصص الصحابة",
                        style: TextStyle(
                          color:
                              index == 2 ? Colors.white : SharedColor.babyBrown,
                          fontFamily: 'amiri',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListOfStories(
                text: index == 0
                    ? "ابو بكر الصديق"
                    : index == 1
                        ? "عمر ابن الخطاب"
                        : "عثمان بن عفان",
              ),
            )
          ],
        ),
      ),
    );
  }
}
