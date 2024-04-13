import 'package:azkar/module/azkar_screen.dart';
import 'package:azkar/shared/theme/color.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'package:flutter/material.dart';

import '../module/elsalah_time.dart';
import '../module/quran.dart';
import '../module/rosary.dart';
import '../module/story.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int index = 0;
  List<Widget> screens = const [
    AzkarScreen(),
    ElsalahTime(),
    QuranScreen(),
    StoryScreen(),
    RosaryScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: CurvedNavigationBar(
          index: index,
          /*  type: BottomNavigationBarType.fixed,
          currentIndex: index, */
          backgroundColor: SharedColor.whtieCream,
          color: SharedColor.mainBrown,
          /*  selectedItemColor: SharedColor.whtieCream,
          unselectedItemColor: SharedColor.babyBrown,
          enableFeedback: false,
          elevation: 0.0, */
          items: const [
            CurvedNavigationBarItem(
              child: ImageIcon(
                AssetImage("assets/praying.png"),
                color: SharedColor.whtieCream,
              ),
              label: 'أذكار',
              labelStyle: TextStyle(
                color: SharedColor.whtieCream,
              ),
            ),
            CurvedNavigationBarItem(
              child: ImageIcon(
                AssetImage("assets/nabawi-mosque.png"),
                color: SharedColor.whtieCream,
              ),
              label: 'الأذان',
              labelStyle: TextStyle(
                color: SharedColor.whtieCream,
              ),
            ),
            CurvedNavigationBarItem(
              child: ImageIcon(
                AssetImage("assets/quran1.png"),
                color: SharedColor.whtieCream,
              ),
              label: 'قراّن كريم',
              labelStyle: TextStyle(
                color: SharedColor.whtieCream,
              ),
            ),
            CurvedNavigationBarItem(
              child: ImageIcon(
                AssetImage("assets/open-book.png"),
                color: SharedColor.whtieCream,
              ),
              label: 'قصص',
              labelStyle: TextStyle(
                color: SharedColor.whtieCream,
              ),
            ),
            CurvedNavigationBarItem(
              child: ImageIcon(
                AssetImage("assets/beads.png"),
                color: SharedColor.whtieCream,
              ),
              label: 'السبحلة',
              labelStyle: TextStyle(
                color: SharedColor.whtieCream,
              ),
            ),
          ],
          onTap: (value) => setState(() {
            index = value;
          }),
        ),
      ),
      body: screens[index],
    );
  }
}
