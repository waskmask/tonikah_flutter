import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:universal_html/html.dart';
import 'dart:convert';
import 'package:uuid/uuid.dart';

class WebHelper {
  static Future<void> saveAndLaunchFile(
      List<int> bytes, String fileName) async {
    if (kIsWeb) {
      AnchorElement(
          href:
              'data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}')
        ..setAttribute('download', fileName)
        ..click();
    }
  }

  static const String storageKey = 'unique_device_id';
  static const Uuid uuid = Uuid();

  // Function to get or generate the device ID
  static String getDeviceId() {
    // Check if the ID already exists in localStorage
    String? deviceId = window.localStorage[storageKey];

    return deviceId ?? '';
  }

  static bool isWeb(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return size.width >= 1000;
  }

}
