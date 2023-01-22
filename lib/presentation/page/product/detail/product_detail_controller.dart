import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/e_product.dart';
import 'package:badlo/domain/entity/user_profile.dart';
import 'package:badlo/domain/repository/product_repository.dart';
import 'package:badlo/domain/repository/profile_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:get/get.dart';

class ProductDetailController extends BaseController {
  final ProductRepository _productRepository;
  final ProfileRepository _profileRepository;

  ProductDetailController(this._productRepository, this._profileRepository);

  final RxInt currentSliderIndex = 1.obs;

  final Rx<EProduct> _product = Rx(Get.arguments[0]);
  EProduct get product => _product.value;

  final Rx<UserProfile?> _productOwnerProfile = Rx(null);
  UserProfile? get productOwnerProfile => _productOwnerProfile.value;

  @override
  void onInit() {
    //_getProductDetail();
    _getProductOwnerProfile();
    super.onInit();
  }

  void _getProductOwnerProfile() async {
    final result = await _profileRepository.get(product.profileID);
    if (result is SuccessResult) {
      _productOwnerProfile.value = result.data;
    }
  }

  void _getProductDetail() async {
    final result = await _productRepository.getProductById(product.id);
    if (result is SuccessResult) {
      _product.value = result.data!;
    } else {
      Get.snackbar('Error!', (result as ErrorResult).msg);
    }
  }

  void updateCurrentSliderIndex(int pos) {
    currentSliderIndex.value = pos;
  }

  void onPressedSwapNow() {
    Get.toNamed(Routes.placeAnOffer);
  }
}
