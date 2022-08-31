import 'package:badlo/data/repository/location_repository_impl.dart';
import 'package:badlo/data/source/location_data_source.dart';
import 'package:badlo/data/utils/maps/location_service.dart';
import 'package:badlo/data/utils/maps/location_service_impl.dart';
import 'package:badlo/domain/repository/location_repository.dart';
import 'package:badlo/presentation/page/map/place_picker_controller.dart';
import 'package:get/get.dart';

class PlacePickerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationService>(() => LocationServiceImpl(Get.find()));
    Get.lazyPut(() => LocationDataSource(Get.find()));
    Get.lazyPut<LocationRepository>(() => LocationRepositoryImpl(Get.find()));
    Get.lazyPut(() => PlacePickerController(Get.find()));
  }
}
