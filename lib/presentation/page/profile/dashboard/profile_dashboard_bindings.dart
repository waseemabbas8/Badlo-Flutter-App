import 'package:badlo/presentation/page/profile/dashboard/profile_dashboard_constroller.dart';
import 'package:get/get.dart';

class ProfileDashboardBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileDashboardController(Get.find()));
  }
}
