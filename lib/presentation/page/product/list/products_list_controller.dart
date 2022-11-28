import 'package:get/get.dart';

import '../../../../domain/entity/e_product.dart';
import '../../../../domain/entity/filter_state.dart';
import '../../../core/base/base_controller.dart';

class ProductsListController extends BaseController {
  final RxList<FilterState> _filters = RxList();
  List<FilterState> get filters => _filters;

  final RxList<EProduct> _filteredProducts = RxList();
  List<EProduct> get filteredProducts => _filteredProducts;

  late List<EProduct> _allProducts;

  int _lastSelectedIndex = 0;

  @override
  void onInit() {
    _filters.value = FilterState.productsFilters;
    _allProducts = EProduct.products;
    _filterProducts();
    super.onInit();
  }

  onFilterSelected(bool value, int index) {
    if (!value) return;
    filters[index].isSelected = true;
    filters[_lastSelectedIndex].isSelected = false;
    _lastSelectedIndex = index;
    _filters.refresh();
    _filterProducts();
  }

  void _filterProducts() async {
    switch (filters[_lastSelectedIndex].filterType) {
      case FilterType.all:
        _filteredProducts.value = _allProducts;
        break;
      case FilterType.active:
        _filteredProducts.value = _allProducts.where((element) => element.isActive).toList();
        break;
      case FilterType.expired:
        _filteredProducts.value = _allProducts.where((element) => element.hasExpired).toList();
        break;
      case FilterType.pending:
        _filteredProducts.value = _allProducts.where((element) => element.isPending).toList();
        break;
    }
  }
}
