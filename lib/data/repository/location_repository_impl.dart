import 'package:badlo/data/source/location_data_source.dart';
import 'package:badlo/domain/repository/location_repository.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationDataSource _locationDataSource;

  LocationRepositoryImpl(this._locationDataSource);

  @override
  Future<LatLng> getCurrentLocation() => _locationDataSource.getCurrentLocation();

  @override
  Future<String?> getAddress(LatLng latLng) => _locationDataSource.getAddress(latLng);
}
