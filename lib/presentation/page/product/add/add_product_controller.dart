import 'dart:io';

import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/category.dart';
import 'package:badlo/domain/entity/market_place.dart';
import 'package:badlo/domain/repository/category_repository.dart';
import 'package:badlo/domain/repository/product_repository.dart';
import 'package:badlo/domain/utils/constants.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

class AddProductController extends BaseController {
  final ProductRepository productRepository;
  final CategoryRepository _categoryRepository;
  final ImagePicker _imagePicker;

  AddProductController(this.productRepository, this._categoryRepository, this._imagePicker);

  final RxList<File> _images = RxList([File('')]);
  List<File> get images => _images;

  final RxList<Category> _categories = RxList();
  List<Category> get categories => _categories.value;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController longDescriptionController = TextEditingController();
  TextEditingController priceTextController = TextEditingController();
  TextEditingController addressTextController = TextEditingController();
  TextEditingController bidingDateTextController = TextEditingController();
  LatLng? selectedPosition;

  final Rx<Category?> _selectedCategory = Rx(null);
  Category? get selectedCategory => _selectedCategory.value;
  final Rx<MarketPlace?> _selectedMarketType = Rx(null);
  MarketPlace? get selectedMarketType => _selectedMarketType.value;

  @override
  void onInit() {
    super.onInit();
    _loadCategories();
  }

  void _loadCategories() async {
    final response = await _categoryRepository.getCategories();
    _categories.value = response.data ?? [];
  }

  void onImagePick() async {
    final xImages = await _imagePicker.pickMultiImage() ?? [];
    if (xImages.isEmpty) return;
    _images.value = xImages.map((e) => File(e.path)).toList();
  }

  void onCategoryChanged(Category? category) {
    if (category == null) return;
    _selectedCategory.value = category;
  }

  void onMarketTypeChanged(MarketPlace? marketPlace) {
    if (marketPlace == null) return;
    _selectedMarketType.value = marketPlace;
  }

  void onDateSelect() async {
    final DateTime? newDate = await showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(2017, 1),
      lastDate: DateTime(2024, 7),
      helpText: 'Select a date',
    );
    if (newDate == null) return;
    bidingDateTextController.text = newDate.toString();
  }

  void onAddressSelect() {
    Get.toNamed(Routes.selectAddress);
  }

  void onContinueButtonClick() {}
}
