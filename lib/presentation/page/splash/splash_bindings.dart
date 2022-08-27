import 'package:badlo/data/repository/preference_repository_impl.dart';
import 'package:badlo/data/source/preference_data_source.dart';
import 'package:badlo/domain/repository/preference_repository.dart';
import 'package:badlo/presentation/page/splash/splash_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStorage(), fenix: true);
    Get.lazyPut(() => PreferenceDataSource(Get.find()), fenix: true);
    Get.lazyPut<PreferenceRepository>(() => PreferenceRepositoryImpl(Get.find()), fenix: true);
    Get.lazyPut(() => SplashController(Get.find()));
  }
}
