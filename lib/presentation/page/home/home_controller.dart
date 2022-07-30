import 'package:badlo/domain/entity/e_product.dart';
import 'package:badlo/domain/repository/product_repository.dart';
import 'package:badlo/presentation/core/constants.dart';
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
    _getSwappingProducts();
    _getAuctionProducts();
    _getDonationProducts();
  }

  void _getSwappingProducts() async {
    final response = await _productsRepository.getProductsByCategory(MarketPlace.swapping);
    _swappingProducts.value = response.data ?? [];
  }

  void _getAuctionProducts() async {
    final response = await _productsRepository.getProductsByCategory(MarketPlace.auction);
    _auctionProducts.value = response.data ?? [];
  }

  void _getDonationProducts() async {
    final response = await _productsRepository.getProductsByCategory(MarketPlace.donation);
    _donationProducts.value = response.data ?? [];
  }
}
