import 'package:azkar/shared/component/custam_button.dart';
import 'package:azkar/shared/method/convert_number.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/theme/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RosaryScreen extends StatefulWidget {
  const RosaryScreen({super.key});

  @override
  State<RosaryScreen> createState() => _RosaryScreenState();
}

class _RosaryScreenState extends State<RosaryScreen> {
  int numberOfRosary = 0;
  @override
  void initState() {
    numberOfRosary = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SharedColor.mainBrown,
        centerTitle: true,
      
        title: Text(
          "السبحة",
          style: TextStyle(
            fontFamily: "amiri",
            color: Colors.white,
            fontSize: 30.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: InkWell(
        onTap: () {
          numberOfRosary++;
          setState(() {});
        },
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              filterQuality: FilterQuality.high,
              image: AssetImage(Assets.OIP),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  replaceNumbers("$numberOfRosary"),
                  style: TextStyle(
                    color: SharedColor.mainBrown,
                    fontSize: 200.w,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              custamButtom(
                color: SharedColor.mainBrown,
                text: Text(
                  "العودة للبداية",
                  style: TextStyle(
                    fontFamily: "amiri",
                    color: Colors.white,
                    fontSize: 20.w,
                  ),
                ),
                paddingHersontal: 20.w,
                paddingVertical: 10.h,
                onTap: () {
                  numberOfRosary = 0;
                  setState(() {});
                },
                radius: 20.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
