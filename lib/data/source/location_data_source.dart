import 'package:badlo/data/source/data_source.dart';
import 'package:badlo/data/utils/maps/location_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationDataSource implements DataSource {
  final LocationService _locationService;

  LocationDataSource(this._locationService);

  Future<LatLng> getCurrentLocation() => _locationService.getCurrentLocation();

  Future<String?> getAddress(LatLng latLng) => _locationService.getAddress(latLng);
}
