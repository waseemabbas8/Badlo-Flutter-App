import 'dart:io';

import 'package:badlo/data/source/product_remote_date_source.dart';
import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/e_product.dart';
import 'package:badlo/domain/repository/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductRemoteDataSource _productRemoteDataSource;

  ProductRepositoryImpl(this._productRemoteDataSource);

  @override
  Future<GenericResponse<String>> addProduct(EProduct product, List<File> images) =>
      ResponseHandler.handle(() => _productRemoteDataSource.addProduct(product, images));

  @override
  Future<GenericResponse<List<EProduct>>> getProducts() =>
      ResponseHandler.handle(_productRemoteDataSource.getProducts);

  @override
  Future<GenericResponse<EProduct>> getProductById(int id) =>
      ResponseHandler.handle(() => _productRemoteDataSource.getProductById(id));

  @override
  Future<GenericResponse<String>> updateProduct(EProduct product) =>
      ResponseHandler.handle(() => _productRemoteDataSource.updateProduct(product));
}
