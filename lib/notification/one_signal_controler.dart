import 'package:flutter/material.dart';
import 'package:nassem/constants/constants.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class OneSignalControler {
  static String? osUserID = "";
  static Future<void> inite() async {
    OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
    OneSignal.shared.setAppId(kOnSignalID);

    OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
      debugPrint("Accepted permission: $accepted");
    });

    final status = await OneSignal.shared.getDeviceState();
    osUserID = status?.userId;
  }
}
