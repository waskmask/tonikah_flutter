import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart' as permission;


class PermissionHelper {
  Future<int> getStoragePermission() async {
    AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
    int sdkInt = androidInfo.version.sdkInt;

    permission.PermissionStatus status; //= await Permission.photos.request();
    if (sdkInt > 30) {
      status = await permission.Permission.photos.request();
    } else {
      status = await permission.Permission.storage.request();
    }

    if (status.isDenied) {
      return 1;
    }

    if (status.isPermanentlyDenied) {
      return 2;
    }
    return 3;
  }

  Future<int> getReadVideoPermission() async {
    AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
    int sdkInt = androidInfo.version.sdkInt;

    permission.PermissionStatus status; //= await Permission.photos.request();
    if (sdkInt > 30) {
      status = await permission.Permission.videos.request();
    } else {
      status = await permission.Permission.storage.request();
    }

    if (status.isDenied) {
      return 1;
    }

    if (status.isPermanentlyDenied) {
      return 2;
    }
    return 3;
  }

  Future<int> getCameraPermission() async {
    var status = await permission.Permission.camera.request();
    if (status.isDenied) {
      return 1;
    }

    if (status.isPermanentlyDenied) {
      return 2;
    }

    return 3;
  }

  Future<int> getLocationPermission() async {
    var status = await permission.Permission.location.request();
    Location location = Location();

    if (status.isDenied) {
      return 1;
    }

    if (status.isPermanentlyDenied) {
      return 2;
    }

    bool isGPS = await Geolocator.isLocationServiceEnabled();

    if (!isGPS) {
      bool isEnable = await location.requestService();
      if (!isEnable) {
        return 3;
      }
    }

    return 4;
  }
}
