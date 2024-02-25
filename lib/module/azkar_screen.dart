import 'package:azkar/model/azkar_model.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/widget/custam_azkar_laist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shared/widget/custam_elsalah_container.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({super.key});

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

List<AzkarModel> azkarModeList = [
  AzkarModel(mainTitle: "كتب", subTitles: [
    "صحيح البخاري",
    "صحيح مسلم",
  ]),
  AzkarModel(mainTitle: "أذكار", subTitles: [
    "أذكار الصباح",
    "أذكار المساء",
    "أذكار الاستيقاذ",
    "أذكار النوم",
    "تسابيح ما بعد الصلاة",
    "الصلاة علي النبي",
  ]),
];

class _AzkarScreenState extends State<AzkarScreen> {
  bool visibleToggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            color: SharedColor.mainBrown,
            size: 30.w,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CustamElsalahContainer(),
              SizedBox(height: 20.h),
              CustamAzkarList(
                azkarModel: azkarModeList,
                visibleToggle: false,
              )
            ],
          ),
        ));
  }
}
