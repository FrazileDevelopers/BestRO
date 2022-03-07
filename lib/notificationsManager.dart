import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationsManager {
  static const String TAG = 'NotificationsManager';

  RemoteMessage? notification;

  save(RemoteMessage? message) async {
    notification = message;
    log('save: ${message?.data}', name: TAG);
  }

  openIfNeeded(context) async {
    log('openIfNeeded', name: TAG);

    if (notification != null && notification?.data != null) {
      log(
        'openIfNeeded, notification != null: ${notification?.data}',
        name: TAG,
      );

      notification = null;
    }
  }
}
