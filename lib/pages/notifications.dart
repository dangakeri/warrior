// ignore_for_file: depend_on_referenced_packages

import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

import '../utility/get_image.dart';

class NotificationsApi {
  static final _notifications = FlutterLocalNotificationsPlugin();
  static final onNotifications = BehaviorSubject<String?>();

  static Future _notificationDetails() async {
    final bigPicturePath =
        await getImageFilePathFromAssets('assets/ajna.jpeg', 'bigPicture');

    final largePicturePath =
        await getImageFilePathFromAssets('assets/Santa.png', 'largeIcon');

    final styleInfo = BigPictureStyleInformation(
        FilePathAndroidBitmap(bigPicturePath),
        largeIcon: FilePathAndroidBitmap(largePicturePath));
    // const sound = 'notifications_daily.wav';
    return NotificationDetails(
      android: AndroidNotificationDetails('channelId', 'channelName',
          importance: Importance.max,
          channelDescription: 'channelDescription',
          // sound: RawResourceAndroidNotificationSound(sound.split('.').first),
          enableVibration: true,
          enableLights: true,
          styleInformation: styleInfo),
      // iOS: const IOSNotificationDetails(
      //   presentAlert: true,
      //   presentBadge: true,
      //   presentSound: true,
      //   sound: '',
      //   subtitle:
      //       "Good morning commuter, make your journey even better by using Tap & Go. #TravelBetter",
      // ),
    );
  }

  static Future init({bool? initSchedule = false}) async {
    const android =
        AndroidInitializationSettings('@drawable/ic_stat_assistant_navigation');
    const settings = InitializationSettings(android: android);
    await _notifications.initialize(
      settings,
      //     onSelectNotification: (payload) async {
      //   onNotifications.add(payload);
      // }
    );

    if (initSchedule!) {
      tz.initializeTimeZones();
      // ignore: non_constant_identifier_names
      final LocationName = await FlutterNativeTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(LocationName));
    }
  }

  static Future showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
    required DateTime scheduleDate,
  }) async =>
      _notifications.show(
        id,
        title,
        body,
        await _notificationDetails(),
        payload: payload,
      );

  static Future showScheduleNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
    required DateTime scheduleDate,
  }) async =>
      _notifications.zonedSchedule(
        id,
        title,
        body,
        _scheduleDaily(const Time(7)),
        await _notificationDetails(),
        payload: payload,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.time,
      );

  static Future showScheduleEveningNotification({
    int id = 1,
    String? title,
    String? body,
    String? payload,
    required DateTime scheduleDate,
  }) async =>
      _notifications.zonedSchedule(
        id,
        title,
        body,
        _scheduleDaily(const Time(19)),
        await _notificationDetails(),
        payload: payload,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.time,
      );

  static tz.TZDateTime _scheduleDaily(Time time) {
    final now = tz.TZDateTime.now(tz.local);
    final scheduleDate = tz.TZDateTime(tz.local, now.year, now.month, now.day,
        time.hour, time.minute, time.second);

    return scheduleDate.isBefore(now)
        ? scheduleDate.add(const Duration(days: 1))
        : scheduleDate;
  }
}
