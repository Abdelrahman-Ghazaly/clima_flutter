import 'dart:developer';

import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      print('getting Location');
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
        forceAndroidLocationManager: true,
      );
      print('got Location');

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      log(e);
    }
  }
}
