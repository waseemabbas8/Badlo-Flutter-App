import 'dart:async';

import 'package:badlo/domain/repository/location_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/page/product/add/add_product_controller.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlacePickerController extends BaseController {
  final LocationRepository _locationRepository;

  PlacePickerController(this._locationRepository);

  final Completer<GoogleMapController> _mapController = Completer();

  final Rx<LatLng?> _currentPosition = Rx(null);
  LatLng? get currentPosition => _currentPosition.value;

  final RxString _address = RxString("");
  String get address => _address.value;

  final CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  void onInit() {
    _getCurrentPosition();
    super.onInit();
  }

  void _getCurrentPosition() async {
    _currentPosition.value = await _locationRepository.getCurrentLocation();
    _moveCamera();
  }

  void _moveCamera() async {
    if (currentPosition == null) return;
    final GoogleMapController controller = await _mapController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: currentPosition!, zoom: 15),
    ));
  }

  void onMapCreated(GoogleMapController controller) {
    _mapController.complete(controller);
  }

  void onCameraMove(CameraPosition position) {
    _currentPosition.value = position.target;
  }

  void onCameraIdle() async {
    if (currentPosition == null) return;
    _address.value = await _locationRepository.getAddress(currentPosition!) ?? "";
  }

  void onPickPlaceButtonClick() {
    final AddProductController controller = Get.find();
    controller.addressTextController.text = address;
    controller.selectedPosition = currentPosition;
    Get.back();
  }
}
