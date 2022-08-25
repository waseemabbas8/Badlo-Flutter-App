import 'package:badlo/data/source/data_source.dart';
import 'package:badlo/data/utils/network/product_client.dart';
import 'package:badlo/domain/entity/e_product.dart';
import 'package:retrofit/retrofit.dart';

class ProductRemoteDataSource extends DataSource {
  final ProductClient _productClient;

  ProductRemoteDataSource(this._productClient);

  Future<HttpResponse<List<EProduct>>> getProducts() => _productClient.getProducts();

  Future<HttpResponse<EProduct>> getProductById(int id) => _productClient.getProductById(id);

  Future<HttpResponse<String>> addProduct(EProduct product) => _productClient.addProduct(product);

  Future<HttpResponse<String>> updateProduct(EProduct product) =>
      _productClient.updateProduct(product);
}
