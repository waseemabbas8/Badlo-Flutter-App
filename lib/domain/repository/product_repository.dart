import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/e_product.dart';

abstract class ProductRepository {
  Future<GenericResponse<List<EProduct>>> getProducts();
  Future<GenericResponse<List<EProduct>>> getProductsByCategory(int categoryId);
  Future<GenericResponse<String>> addProduct(EProduct product);
  Future<GenericResponse<String>> updateProduct(EProduct product);
}