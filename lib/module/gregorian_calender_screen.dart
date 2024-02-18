import 'package:azkar/shared/theme/image.dart';
import 'package:flutter/material.dart';

class GregrianCalenderScreen extends StatefulWidget {
  const GregrianCalenderScreen({super.key});

  @override
  State<GregrianCalenderScreen> createState() => _GregrianCalenderScreenState();
}

class _GregrianCalenderScreenState extends State<GregrianCalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          filterQuality: FilterQuality.high,
          image: AssetImage(Assets.OIP),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
