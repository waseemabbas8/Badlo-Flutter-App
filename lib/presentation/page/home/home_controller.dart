import 'package:badlo/domain/repository/swapping_repository.dart';

import '../../core/base/base_controller.dart';

class HomeController extends BaseController {
  final SwappingRepository _swappingRepository;

  HomeController(this._swappingRepository);

  @override
  void onInit() {
    super.onInit();
    _getSwappingProducts();
  }

  void _getSwappingProducts() async {
    final response = await _swappingRepository.getProducts();
    print('SwappingItems: ${response.data?.length}');
  }
}
