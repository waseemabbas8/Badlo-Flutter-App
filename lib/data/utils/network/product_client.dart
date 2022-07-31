import 'package:badlo/domain/entity/e_product.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data_constants.dart';

part 'product_client.g.dart';

@RestApi(baseUrl: DataConstants.restApiBaseUrl)
abstract class ProductClient {
  static ProductClient create(Dio dio) => ProductClient(dio);

  factory ProductClient(Dio dio, {String baseUrl}) = _ProductClient;

  static const _apiModule = 'Product';

  @GET('$_apiModule/ProductList')
  Future<HttpResponse<List<EProduct>>> getProducts();

  @GET('$_apiModule/ProductbyId')
  Future<HttpResponse<List<EProduct>>> getProductById(
    @Query('id') int id,
  );

  @PUT('$_apiModule/Add')
  Future<HttpResponse<String>> addProduct(
    @Body() EProduct product,
  );

  @PUT('$_apiModule/Edit')
  Future<HttpResponse<String>> updateProduct(
    @Body() EProduct product,
  );
}
