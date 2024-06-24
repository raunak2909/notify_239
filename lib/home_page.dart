import 'package:flutter/material.dart';
import 'package:notification_239/notification_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NotificationManager? notificationManager;

  @override
  void initState() {
    super.initState();
    notificationManager = NotificationManager();
    notificationManager!.initializeNotificationManager();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            notificationManager!.notify(
                mId: 100, title: "New Message", body: "Message from Raman.");
          },
          child: Text('Notify'),
        ),
      ),
    );
  }
}
