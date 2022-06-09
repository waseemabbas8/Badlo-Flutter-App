import 'package:badlo/domain/entity/inspection_package.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';

class InspectionPackagesController extends BaseController {
  final List<InspectionPackage> packages = [];

  @override
  void onInit() {
    super.onInit();
    packages.addAll([
      InspectionPackage(
        'Standard Package',
        [
          'offer 1',
          'offer 2',
          'offer 2',
        ],
        'Rs. 500',
      ),
      InspectionPackage(
        'Premium Package',
        [
          'offer 1',
          'offer 2',
          'offer 2',
        ],
        'Rs. 1000',
      ),
    ]);
  }
}
