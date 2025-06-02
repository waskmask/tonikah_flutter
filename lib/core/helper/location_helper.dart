

import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart' as geo;


/*class LocationHelper {
  Future<MyLocation> getCurrentLocation() async {
    int permissionStatus =
        await locator.get<PermissionHelper>().getLocationPermission();

    if (permissionStatus == 1) {
      return MyLocation(
          address: '',
          status: 1,
          message: kLocationDenyMessage,
          latitude: 0,
          longitude: 0);
    }

    if (permissionStatus == 2) {
      return MyLocation(
          address: '',
          status: 2,
          message: kLocationPermanentDeniedMsg,
          latitude: 0,
          longitude: 0);
    }

    if (permissionStatus == 3) {
      return MyLocation(
          address: '',
          status: 3,
          message: kLocationGPSDisable,
          latitude: 0,
          longitude: 0);
    }

    //todo: status 4 means that permission allow and GPS enable.
    final location = await Geolocator.getCurrentPosition();
    String address = await getAddress(location.latitude, location.longitude);
    return MyLocation(
        address: address,
        status: 5,
        message: 'Location Found',
        latitude: location.latitude,
        longitude: location.longitude);
  }

  static Future<String> getAddress(double latitude, double longitude) async {
    List<geo.Placemark> placeMarks =
        await geo.placemarkFromCoordinates(latitude, longitude);
    geo.Placemark placemark = placeMarks[0];
    String address =
        "${placemark.street!}, ${placemark.subLocality},${placemark.locality!},${placemark.administrativeArea!},${placemark.postalCode!}";
    return address;
  }
}*/
