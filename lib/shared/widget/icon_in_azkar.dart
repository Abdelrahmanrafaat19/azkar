// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconInAzkar extends StatelessWidget {
  Widget widget;
  IconInAzkar({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0xff9f8674),
      radius: 20.r,
      child: widget,
    );
  }
}
