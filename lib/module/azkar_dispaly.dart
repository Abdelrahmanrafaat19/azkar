import 'package:azkar/shared/method/scalfactor_method.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/widget/body_azker_display_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AzkarDispalyScreen extends StatefulWidget {
  const AzkarDispalyScreen({super.key});

  @override
  State<AzkarDispalyScreen> createState() => _AzkarDispalyScreenState();
}

class _AzkarDispalyScreenState extends State<AzkarDispalyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: SharedColor.mainBrown,
          size: 30.w,
        ),
        centerTitle: true,
        title: Text(
          "أذكار الصباح",
          style: TextStyle(
            fontSize: getResponsiveFont(context, fontSize: 25),
            color: SharedColor.mainBrown,
            fontFamily: "cairo",
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: const BodyAzkarDispalyScreen(),
    );
  }
}
