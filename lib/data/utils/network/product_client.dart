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
  Future<HttpResponse<EProduct>> getProductById(
    @Query('id') int id,
  );

  @MultiPart()
  @POST('$_apiModule/Add')
  Future<HttpResponse<String>> addProduct({
    @Part(name: 'CategoryId') required int categoryId,
    @Part(name: 'ProfileID') required int profileId,
    @Part(name: 'ProductName') required String name,
    @Part(name: 'Price') required double price,
    @Part(name: 'Description') required String description,
    @Part(name: 'ShortDescription') required String shortDescription,
    @Part(name: 'MarketPlace') required int marketPlace,
    @Part(name: 'Address') required String address,
    @Part(name: 'InspectionStatus') required String inspectionStatus,
    @Part(name: 'IsInspection') required bool isInspection,
    @Part(name: 'Latitude') required String latitude,
    @Part(name: 'Longitude') required String longitude,
    @Part() required List<MultipartFile> images,
  });

  @PUT('$_apiModule/Edit')
  Future<HttpResponse<String>> updateProduct(
    @Body() EProduct product,
  );
}
