import 'package:azkar/model/list_of_azkar.dart';
import 'package:azkar/shared/method/scalfactor_method.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/widget/body_azker_display_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AzkarDispalyScreen extends StatefulWidget {
  String mainTitle;
  List<AzkarListModel> azkarData;
  AzkarDispalyScreen({
    super.key,
    required this.azkarData,
    required this.mainTitle,
  });

  @override
  State<AzkarDispalyScreen> createState() => _AzkarDispalyScreenState();
}

class _AzkarDispalyScreenState extends State<AzkarDispalyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            color: SharedColor.mainBrown,
            size: 30.w,
          ),
        ),
        centerTitle: true,
        title: Text(
          widget.mainTitle,
          style: TextStyle(
            fontSize: getResponsiveFont(context, fontSize: 25),
            color: SharedColor.mainBrown,
            fontFamily: "cairo",
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: BodyAzkarDispalyScreen(
        azkarData: widget.azkarData,
      ),
    );
  }
}
