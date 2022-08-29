import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/page/map/place_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';

class PlacePickerPage extends BasePage<PlacePickerController> {
  const PlacePickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlacePicker(
      apiKey: ApiKeys.googleMapsApiKey,
      onPlacePicked: _onPlacePicked,
      useCurrentLocation: true,
      initialPosition: const LatLng(33.8688, 151.2093),
    );
  }

  void _onPlacePicked(PickResult? result) {
    print(result?.adrAddress);
  }
}
