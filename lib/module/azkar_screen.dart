import 'package:azkar/model/azkar_model.dart';
import 'package:azkar/shared/constant/azan.dart';
import 'package:azkar/shared/constant/azkar_data.dart';
import 'package:azkar/shared/constant/evening_prayers.dart';
import 'package:azkar/shared/constant/get_up.dart';
import 'package:azkar/shared/constant/prayer_remembrances.dart';
import 'package:azkar/shared/constant/sleeping_azkar.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:azkar/shared/widget/custam_azkar_laist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/list_of_azkar.dart';
import '../shared/widget/custam_elsalah_container.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({super.key});

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

List<AzkarModel> azkarModeList = [
  AzkarModel(
    mainTitle: "أذكار",
    subTitles: [
      AzkarMainModel(
        mainTitl: "أذكار الصباح",
        azkarListModel: citationForMorning,
      ),
      AzkarMainModel(
        mainTitl: "أذكار المساء",
        azkarListModel: eveningPrayersList,
      ),
      AzkarMainModel(
        mainTitl: "تسابيح ما بعد الصلاة",
        azkarListModel: prayersList,
      ),
      AzkarMainModel(
        mainTitl: "أذكار قبل النوم",
        azkarListModel: sleepingAzkar,
      ),
      AzkarMainModel(
          azkarListModel: getUpAzlar, mainTitl: "أذكار الإستيقاظ من النوم"),
      AzkarMainModel(
        mainTitl: "أذكار الأذان",
        azkarListModel: azanAzkarList,
      ),
    ],
  ),
];

class _AzkarScreenState extends State<AzkarScreen> {
  bool visibleToggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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
