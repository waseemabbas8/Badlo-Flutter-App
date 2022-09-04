import 'package:badlo/data/repository/auth_repository_impl.dart';
import 'package:badlo/data/repository/profile_repository_impl.dart';
import 'package:badlo/data/source/auth_data_source.dart';
import 'package:badlo/data/source/profile_remote_data_source.dart';
import 'package:badlo/data/utils/network/auth_client.dart';
import 'package:badlo/data/utils/network/profile_client.dart';
import 'package:badlo/domain/repository/auth_repository.dart';
import 'package:badlo/domain/repository/profile_repository.dart';
import 'package:badlo/presentation/page/auth/signup/sign_up_controller.dart';
import 'package:get/get.dart';

class SignUpBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthClient.create(Get.find()));
    Get.lazyPut(() => AuthDataSource(Get.find()), fenix: true);
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(Get.find(), Get.find()));
    Get.lazyPut(() => ProfileClient.create(Get.find()));
    Get.lazyPut(() => ProfileRemoteDataSource(Get.find()), fenix: true);
    Get.lazyPut<ProfileRepository>(() => ProfileRepositoryImpl(Get.find(), Get.find()));
    Get.lazyPut(() => SignUpController(Get.find(), Get.find()));
  }
}
