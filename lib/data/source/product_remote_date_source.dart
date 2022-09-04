import 'dart:io';

import 'package:badlo/data/source/data_source.dart';
import 'package:badlo/data/utils/file_utils.dart';
import 'package:badlo/data/utils/network/product_client.dart';
import 'package:badlo/domain/entity/e_product.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

class ProductRemoteDataSource extends DataSource {
  final ProductClient _productClient;

  ProductRemoteDataSource(this._productClient);

  Future<HttpResponse<List<EProduct>>> getProducts() => _productClient.getProducts();

  Future<HttpResponse<EProduct>> getProductById(int id) => _productClient.getProductById(id);

  Future<HttpResponse<String>> addProduct(EProduct product, List<File> images) async {
    final List<MultipartFile> multipartImages = [];
    for (int i = 0; i < images.length; i++) {
      multipartImages.add(await FileUtil.fileToMultipartFile(images[i], 'image$i'));
    }

    print(product.toJson());
    print(multipartImages);

    return _productClient.addProduct(
      categoryId: product.categoryId,
      profileId: product.profileID,
      name: product.name,
      price: product.price,
      description: product.description,
      shortDescription: product.shortDescription,
      marketPlace: product.market,
      address: product.address,
      inspectionStatus: product.inspectionStatus,
      isInspection: product.isInspection,
      latitude: product.latitude,
      longitude: product.longitude,
      images: multipartImages,
    );
  }

  Future<HttpResponse<String>> updateProduct(EProduct product) =>
      _productClient.updateProduct(product);
}
