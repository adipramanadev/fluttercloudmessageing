import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:fluttercloudmessageing/firebase_api.dart';
import 'package:fluttercloudmessageing/firebase_options.dart';
import 'package:fluttercloudmessageing/homepage.dart';
import 'package:fluttercloudmessageing/notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().iniNotifications();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: HomePage(),
        home: HomePage(),
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        routes: {
          '/notificationpage': (context) => NotificationPage(
                message: RemoteMessage(),
              ),
        });
  }
}
