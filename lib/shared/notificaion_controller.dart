/* import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationController {
  static Future<void> initializeLocalNotifications() async {
    await AwesomeNotifications().initialize(
      null, //'resource://drawable/res_app_icon',//
      [
        NotificationChannel(
            channelKey: 'alerts',
            channelName: 'Alerts',
            channelDescription: 'Notification tests as alerts',
            playSound: true,
            onlyAlertOnce: true,
            groupAlertBehavior: GroupAlertBehavior.Children,
            importance: NotificationImportance.High,
            defaultPrivacy: NotificationPrivacy.Private,
            defaultColor: Colors.deepPurple,
            ledColor: Colors.deepPurple)
      ],
      channelGroups: [
        NotificationChannelGroup(
          channelGroupKey: "high_importance_channel_group",
          channelGroupName: "Group1",
        )
      ],
      debug: true,
    );
    await AwesomeNotifications().isNotificationAllowed().then((value) async {
      if (!value) {
        await AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }
}
 */
import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:azkar/shared/replase_time.dart';

import 'package:azkar/shared/schedual.dart';
import 'package:flutter/material.dart';

class NotificationController {
  static final AwesomeNotifications awesomeNotifications =
      AwesomeNotifications();
  static Future<void> initializeLocalNotifications() async {
    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          importance: NotificationImportance.Max,
          defaultPrivacy: NotificationPrivacy.Public,
          defaultRingtoneType: DefaultRingtoneType.Alarm,
          locked: false,
          playSound: true,
          enableVibration: true,
          channelKey: "pushNotification",
          channelName: "High Importance Notification",
          channelDescription: "Notification channel for basic tests",
        )
      ],
      debug: true,
    );
  }

  static Future<void> schedualNotification({required Schedule schedule}) async {
    Random random = Random();
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: random.nextInt(100000000) + 1,
            channelKey: "pushNotification",
            title: "this local Notification",
            body: schedule.details,
            notificationLayout: NotificationLayout.BigText,
            locked: false,
            wakeUpScreen: true,
            autoDismissible: false,
            fullScreenIntent: true,
            backgroundColor: Colors.transparent,
            category: NotificationCategory.Alarm),
        schedule: NotificationInterval(
            interval: 60 * 60 * 24,
            timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
            repeats: true),
        /*  NotificationCalendar(
          hour: getHour(schedule.time),
          minute: getMinute(schedule.time),
          year: DateTime.now().year,
          month: DateTime.now().month,
          day: DateTime.now().day,
          second: 0,
          preciseAlarm: true,
          allowWhileIdle: true,
          timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
          repeats: true,
          
        ), */
        actionButtons: [
          NotificationActionButton(
            key: "Close",
            label: "Close",
            autoDismissible: true,
          ),
        ]);
  }

/*   static void showNotification(RemoteMessage message) {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: message.messageId.hashCode,
        channelKey: 'pushNotification',
        title: message.notification?.title ?? '',
        body: message.notification?.body ?? '',
      ),
    ); */
}
