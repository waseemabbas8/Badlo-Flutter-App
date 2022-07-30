import 'package:badlo/data/source/product_remote_date_source.dart';
import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/e_product.dart';
import 'package:badlo/domain/repository/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductRemoteDataSource _productRemoteDataSource;

  ProductRepositoryImpl(this._productRemoteDataSource);

  @override
  Future<GenericResponse<String>> addProduct(EProduct product) =>
      ResponseHandler.handle(() => _productRemoteDataSource.addProduct(product));

  @override
  Future<GenericResponse<List<EProduct>>> getProducts() =>
      ResponseHandler.handle(_productRemoteDataSource.getProducts);

  @override
  Future<GenericResponse<List<EProduct>>> getProductsByCategory(int categoryId) =>
      ResponseHandler.handle(() => _productRemoteDataSource.getProductsByCategory(categoryId));

  @override
  Future<GenericResponse<String>> updateProduct(EProduct product) =>
      ResponseHandler.handle(() => _productRemoteDataSource.updateProduct(product));
}
