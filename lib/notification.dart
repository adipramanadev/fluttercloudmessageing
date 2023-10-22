import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationPage extends StatelessWidget {
  final RemoteMessage message;

  NotificationPage({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Page'),
      ),
      body: Column(
        children: [
          Text(message.notification!.title!),
          Text(message.notification!.body!),
          Text(message.data.toString()),
        ],
      ),
    );
  }
}
