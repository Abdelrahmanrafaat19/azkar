import 'package:adhan/adhan.dart';
import 'package:azkar/layout/bottom_bar_screen.dart';
import 'package:azkar/module/splash_screen.dart';

import 'package:azkar/shared/theme/color.dart';
/* import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart'; */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

final myCoordinates = Coordinates(30.597246, 30.987632);
final params = CalculationMethod.egyptian.getParameters();

final prayerTimes = PrayerTimes.today(myCoordinates, params);
List<String> prayerTimesList = [
  DateFormat.jm().format(prayerTimes.fajr),
  DateFormat.jm().format(prayerTimes.sunrise),
  DateFormat.jm().format(prayerTimes.dhuhr),
  DateFormat.jm().format(prayerTimes.asr),
  DateFormat.jm().format(prayerTimes.maghrib),
  DateFormat.jm().format(prayerTimes.isha),
];
void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); /* 
  await AwesomeNotifications().isNotificationAllowed().then((value) {
    if (!value) {
      AwesomeNotifications().requestPermissionToSendNotifications();
    } /* */
  });
  await NotificationController.initializeLocalNotifications(); */
/*   await LocationService.makePermission();
  await LocationService.makeService(); */

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp()
      /*   DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ), */
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                color: SharedColor.mainBrown,
              ),
            ),
            locale: const Locale('ar', 'AR'), // Set the locale to Arabic
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('ar', 'AR'), // Arabi
            ],
            home: child,
          );
        },
        child: const SplachScreen());
  }
}
