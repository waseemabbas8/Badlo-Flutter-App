import 'dart:io';

import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/e_product.dart';

abstract class ProductRepository {
  Future<GenericResponse<List<EProduct>>> getProducts();
  Future<GenericResponse<EProduct>> getProductById(int id);
  Future<GenericResponse<String>> addProduct(EProduct product, List<File> images);
  Future<GenericResponse<String>> updateProduct(EProduct product);
}
