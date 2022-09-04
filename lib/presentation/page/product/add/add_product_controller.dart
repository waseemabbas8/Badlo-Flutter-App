import 'dart:io';

import 'package:badlo/data/utils/date_provider.dart';
import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/category.dart';
import 'package:badlo/domain/entity/e_product.dart';
import 'package:badlo/domain/entity/market_place.dart';
import 'package:badlo/domain/repository/category_repository.dart';
import 'package:badlo/domain/repository/preference_repository.dart';
import 'package:badlo/domain/repository/product_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

class AddProductController extends BaseController with DateProvider {
  final ProductRepository productRepository;
  final CategoryRepository _categoryRepository;
  final PreferenceRepository _preferenceRepository;
  final ImagePicker _imagePicker;

  AddProductController(
    this.productRepository,
    this._categoryRepository,
    this._imagePicker,
    this._preferenceRepository,
  );

  final RxList<File> _images = RxList([File('')]);
  List<File> get images => _images;

  final RxList<Category> _categories = RxList();
  List<Category> get categories => _categories.value;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController shortDescriptionController = TextEditingController();
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

  int get _profileId => _preferenceRepository.getProfile()?.id ?? 0;

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

  void onContinueButtonClick() async {
    if (!formKey.currentState!.validate()) return;
    final product = EProduct(
      name: nameController.text,
      price: double.parse(priceTextController.text),
      description: descriptionController.text,
      shortDescription: shortDescriptionController.text,
      market: selectedMarketType!.id,
      categoryId: selectedCategory!.id,
      profileID: _profileId,
      address: 'addressTextController.text',
      inspectionStatus: "false",
      isInspection: true,
      latitude: selectedPosition?.latitude.toString() ?? "31.714579146710005",
      longitude: selectedPosition?.longitude.toString() ?? "73.38043019320084",
    );
    final response = await productRepository.addProduct(product, images);
    if (response.result is SuccessResult) {
      Get.snackbar('Success', (response.result as SuccessResult).msg);
      Get.back();
    } else {
      Get.snackbar('Error', (response.result as ErrorResult).msg);
    }
  }
}
