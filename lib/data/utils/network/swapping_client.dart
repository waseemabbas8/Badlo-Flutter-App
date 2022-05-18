import 'package:badlo/domain/entity/e_product.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data_constants.dart';

part 'swapping_client.g.dart';

@RestApi(baseUrl: DataConstants.restApiBaseUrl)
abstract class SwappingClient {
  static SwappingClient create(Dio dio) => SwappingClient(dio);

  factory SwappingClient(Dio dio, {String baseUrl}) = _SwappingClient;

  @GET('swapping/products')
  Future<HttpResponse<List<EProduct>>> getProducts();
}
