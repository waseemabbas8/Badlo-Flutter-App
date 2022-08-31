import 'dart:convert';

import 'package:badlo/data/utils/maps/location_service.dart';
import 'package:badlo/presentation/core/constants.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:dio/dio.dart';

class LocationServiceImpl implements LocationService {
  final Dio dio;

  LocationServiceImpl(this.dio);

  @override
  Future<LatLng> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    final position = await Geolocator.getCurrentPosition();

    return LatLng(position.latitude, position.longitude);
  }

  @override
  Future<String?> getAddress(LatLng latLng) async {
    String _host = 'https://maps.google.com/maps/api/geocode/json';
    final url =
        '$_host?key=${ApiKeys.googleMapsApiKey}&language=en&latlng=${latLng.longitude},${latLng.longitude}';
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      print(response.data);
      Map data = jsonDecode(response.data);
      String _formattedAddress = data["results"][0]["formatted_address"];
      print("response ==== $_formattedAddress");
      return _formattedAddress;
    }
    return null;
  }
}
