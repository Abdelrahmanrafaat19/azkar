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

class _AzkarScreenState extends State<AzkarScreen> {
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
      body: CustomScrollView(
        slivers: [
          const CustamElsalahContainer(),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          CustamAzkarList(),
        ],
      ),
    );
  }
}
