import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/e_product.dart';
import 'package:badlo/domain/repository/product_repository.dart';
import 'package:badlo/domain/utils/constants.dart';
import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:get/get.dart';
import 'dart:developer' as dev_log;

import '../../../domain/entity/category.dart';
import '../../../domain/entity/market_place.dart';
import '../../../domain/repository/category_repository.dart';
import '../../core/base/base_controller.dart';

class HomeController extends BaseController {
  final ProductRepository _productsRepository;
  final CategoryRepository _categoryRepository;

  HomeController(this._productsRepository, this._categoryRepository);

  final RxList<Category> _categories = RxList();
  List<Category> get categories => _categories;

  final RxList<EProduct> _swappingProducts = RxList();

  List<EProduct> get swappingProducts => _swappingProducts;

  final RxList<EProduct> _auctionProducts = RxList();

  List<EProduct> get auctionProducts => _auctionProducts;

  final RxList<EProduct> _donationProducts = RxList();

  List<EProduct> get donationProducts => _donationProducts;

  @override
  void onInit() {
    super.onInit();
    _getCategories();
    _getProducts();
  }

  void _getCategories() async {
    isLoading = true;
    final response = await _categoryRepository.getCategories();
    if (response.result is SuccessResult) {
      _categories.value = response.data!;
    }
  }

  void _getProducts() async {
    final response = await _productsRepository.getProducts();
    if (response.result is SuccessResult) {
      _swappingProducts.value =
          response.data!.where((element) => element.market == MarketType.swapping).toList();
      _auctionProducts.value =
          response.data!.where((element) => element.market == MarketType.auction).toList();
      _donationProducts.value =
          response.data!.where((element) => element.market == MarketType.donation).toList();
    } else {
      ///TODO handle error
    }
    isLoading = false;

    //print logs
    dev_log.log(swappingProducts.toString(), name: AppLogs.dataLogs);
    dev_log.log(auctionProducts.toString(), name: AppLogs.dataLogs);
    dev_log.log(donationProducts.toString(), name: AppLogs.dataLogs);
  }

  void onPostAddClick() {
    Get.toNamed(Routes.addEditProduct);
  }

  void onProfileClick() {
    Get.toNamed(Routes.profileDashboard);
  }

  void onBrowsCategories() {
    if (categories.isEmpty) return;
    Get.toNamed(Routes.categories);
  }

  void onCategoryItemClick() {}

  void onProductItemClick(EProduct product) {
    Get.toNamed(Routes.eProductDetail, arguments: [product]);
  }
}
