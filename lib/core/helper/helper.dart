import 'dart:developer' as p;
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:share_plus/share_plus.dart';
import '../component/custom_text_widget.dart';
import 'constants.dart';

debugLog(String tag, dynamic message) {
  if (kDebugMode) {
    p.log('$tag => $message');
  }
}

class Helper {
  static showSnackBar(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: CustomTextWidget(
          text: message,
          maxLine: 10,
          textColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  static showActionSnackBar(BuildContext context, String message, Color color,
      String actionTitle, VoidCallback onTap) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: CustomTextWidget(
          text: message,
          maxLine: 10,
          textColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        duration: const Duration(minutes: 5),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(label: actionTitle, onPressed: onTap),
      ),
    );
  }

  static showToastMessage(String message, Color color) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 14.0);
  }

  static showLoaderDialog(BuildContext context,
      {String message = 'Loading', String? lottie}) {
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.0),
          lottie != null
              ? Lottie.asset(
                  '$kAnimPath/$lottie',
                  height: 120.0,
                  width: 120.0,
                )
              : CircularProgressIndicator(),
          SizedBox(height: 10.0),
          CustomTextWidget(
            text: message,
            textColor: kTextColor,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static String formattedDate(DateTime selectedDate) {
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(selectedDate);
    return formatted;
  }

  static String capturedDateTime(DateTime selectedDate) {
    final DateFormat formatter = DateFormat('dd/MM/yyyy hh:mm:ss');
    final String formatted = formatter.format(selectedDate);
    return formatted;
  }

  static String compareDataTime(String inputDate) {
    DateTime date = DateTime.parse(inputDate);
    return DateFormat('dd-MMM-yyyy, hh:mm a').format(date);
  }

  static String convertDateDDMMMYYY(String inputDate) {
    DateTime date = DateTime.parse(inputDate);
    return DateFormat('dd MMM yyyy, hh:mm a').format(date);
  }

  static String getCurrentDateTime() {
    final DateFormat formatter = DateFormat('yyyy-MM-dd, hh:mm:ss a');
    final String formatted = formatter.format(DateTime.now());
    return formatted;
  }

  static String formatTime(String time) {
    DateTime start;
    if (time.contains('AM') || time.contains('PM')) {
      start = DateFormat("H:m a").parse(time);
    } else {
      start = DateFormat("H:m").parse(time);
    }

    final DateFormat formatter = DateFormat('hh:mm: a');
    final String formatted = formatter.format(start);

    return formatted;
  }

  /* static void launchApp(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch');
    }
  }*/

  static String timeAgoCustom(String dateTime) {
    // <-- Custom method Time Show  (Display Example  ==> 'Today 7:00 PM')
    // WhatsApp Time Show Status Shimila

    final DateFormat formatter = DateFormat('yyyy-MM-dd, hh:mm:ss a');

    DateTime d = formatter.parse(dateTime);

    Duration diff = DateTime.now().difference(d);
    if (diff.inDays > 365) {
      return DateFormat('dd MMM yy, hh:mm a').format(d);
      //"${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
    }
    if (diff.inDays > 30) {
      return DateFormat('dd MMM yy, hh:mm a').format(d);
      //"${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
    }
    if (diff.inDays > 7) {
      return DateFormat('dd MMM yy, hh:mm a').format(
          d); //"${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
    }
    if (diff.inDays > 0) return DateFormat.E().add_jm().format(d);
    if (diff.inHours > 0) return "Today";
    if (diff.inMinutes > 0) {
      return "${diff.inMinutes} ${diff.inMinutes == 1 ? "min" : "mins"} ago";
    }
    return "Just now";
  }

  static String dateTimeAgo(String dateTime) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd, hh:mm:ss a');

    DateTime d = formatter.parse(dateTime);

    return DateFormat('dd MMM yy, hh:mm a').format(d);
    //return timeago.format(d);
  }

  static bool isEmailValid(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  static bool isMobile(String input) {
    final mobileRegex =
        RegExp(r'^[0-9]{10}$'); // Assumes a 10-digit mobile number
    return mobileRegex.hasMatch(input);
  }

  static void copy(String text) {
    Clipboard.setData(ClipboardData(text: text));
  }

  static String getFileExtension(String fileName) {
    return fileName.split('.').last.toLowerCase();
  }

  static Future<String> showDatePickerDialog(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      return DateFormat('dd-MM-yyyy').format(picked);
    } else {
      return 'Select Date';
    }
  }

  /*
  static void gotoDirection(String lat, String lon) async {
    Uri gmmIntentUri = Uri.parse("google.navigation:q=$lat,$lon&mode=d");
    launchUrl(gmmIntentUri);
  }*/

  static void shareApp() async {
    try {
      String message = "$kAppDesc ($kAppName)";

      if (Platform.isAndroid) {
        await Share.share(
            '$message\n\nDownload the mobile now.\n$kAppPlayStore');
      } else {
        await Share.share(
            '$message\n\nDownload the mobile now.\n$kAppIosStore');
      }
    } catch (e) {}
  }

  static String getUrlType(String url) {
    Uri uri = Uri.parse(url);
    String typeString = uri.path.substring(uri.path.length - 3).toLowerCase();

    if (typeString == "mp4") {
      return 'video';
    } else {
      return 'image';
    }
  }

  static Future<int> androidSdkVersion() async {
    AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
    int sdkInt = androidInfo.version.sdkInt;
    return sdkInt;
  }


  static String photoResize(String url, {double width = 0, double height = 0}) {
    if (url.contains('cloudinary')) {
      return url.replaceFirst("upload/",
          "upload/w_${width.toStringAsFixed(0)},h_${height.toStringAsFixed(0)},c_scale/");
    }
    return url;
  }
}

extension Numeric on String {
  bool get isNumeric => num.tryParse(this) != null ? true : false;
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
