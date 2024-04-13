import 'package:azkar/layout/bottom_bar_screen.dart';
import 'package:azkar/module/elsalah_time.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        elsalahNotification();
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const BottomBarScreen(),
        ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: SharedColor.mainBrown,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6), // Set the shadow color
                spreadRadius: 5, // Set how far the shadow spreads
                blurRadius: 7, // Set the blur radius
                offset: const Offset(0, 3), // Set the offset of the shadow
              ),
            ],
          ),
          child: const ImageIcon(
            AssetImage("assets/praying.png"),
            color: SharedColor.whtieCream,
          ),
        ),
      ),
    );
  }
}
