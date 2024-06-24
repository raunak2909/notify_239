import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationManager {
  FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  initializeNotificationManager() {
    AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('app_icon');

    DarwinInitializationSettings iOSSettings = DarwinInitializationSettings();

    InitializationSettings initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iOSSettings,
    );

    notificationsPlugin.initialize(initSettings,
        onDidReceiveNotificationResponse: (response) {

        });
  }

  //normal notification
  void notify({required int mId, required String title, required String body}) {
    AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails('Test', 'Test Channel');

    DarwinNotificationDetails iOSDetails = DarwinNotificationDetails();

    NotificationDetails details =
        NotificationDetails(android: androidDetails, iOS: iOSDetails);

    notificationsPlugin.show(mId, title, body, details);
  }

  //periodic notification
  void notifyPeriodically({required int mId, required String title, required String body}) {
    AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails('Test', 'Test Channel');

    DarwinNotificationDetails iOSDetails = DarwinNotificationDetails();

    NotificationDetails details =
        NotificationDetails(android: androidDetails, iOS: iOSDetails);

    notificationsPlugin.periodicallyShow(
        mId, title, body, RepeatInterval.everyMinute, details);
  }
//scheduled notification
}
