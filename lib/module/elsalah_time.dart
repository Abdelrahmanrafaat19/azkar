import 'package:azkar/shared/notificaion_controller.dart';
import 'package:azkar/shared/schedual.dart';
import 'package:azkar/shared/theme/color.dart';

import 'package:azkar/shared/widget/custam_adhan_list.dart';
import 'package:azkar/shared/widget/custam_elsalah_container.dart';
import 'package:azkar/shared/widget/custam_notification_adhane_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElsalahTime extends StatefulWidget {
  const ElsalahTime({super.key});

  @override
  State<ElsalahTime> createState() => _ElsalahTimeState();
}

class _ElsalahTimeState extends State<ElsalahTime> {
  @override
  void initState() {
    NotificationController.schedualNotification(
      schedule: Schedule(details: "حان الان موعد ازان العصر", time: "11"),
    );
    super.initState();
  }

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
      body: ListView(
        children: [
          const CustamElsalahContainer(),
          SizedBox(
            height: 20.h,
          ),
          const CustamAdhanList(),
          SizedBox(
            height: 20.h,
          ),
          const CustamNotificationAdhaneContainer()
        ],
      ),
    );
  }
}
