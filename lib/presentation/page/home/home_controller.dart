import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/e_product.dart';
import 'package:badlo/domain/repository/product_repository.dart';
import 'package:badlo/domain/utils/constants.dart';
import 'package:get/get.dart';

import '../../core/base/base_controller.dart';

class HomeController extends BaseController {
  final ProductRepository _productsRepository;

  HomeController(this._productsRepository);

  final RxList<EProduct> _swappingProducts = RxList();

  List<EProduct> get swappingProducts => _swappingProducts;

  final RxList<EProduct> _auctionProducts = RxList();

  List<EProduct> get auctionProducts => _auctionProducts;

  final RxList<EProduct> _donationProducts = RxList();

  List<EProduct> get donationProducts => _donationProducts;

  @override
  void onInit() {
    super.onInit();
    _getProducts();
  }

  void _getProducts() async {
    isLoading = true;
    final response = await _productsRepository.getProducts();
    if (response.result is SuccessResult) {
      _swappingProducts.value =
          response.data!.where((element) => element.marketType == MarketType.swapping).toList();
      _auctionProducts.value =
          response.data!.where((element) => element.marketType == MarketType.auction).toList();
      _donationProducts.value =
          response.data!.where((element) => element.marketType == MarketType.donation).toList();
    } else {
      ///TODO handle error
    }
    isLoading = false;
  }
}
