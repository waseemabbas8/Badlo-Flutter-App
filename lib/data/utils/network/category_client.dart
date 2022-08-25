import 'package:badlo/domain/entity/category.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data_constants.dart';

part 'category_client.g.dart';

@RestApi(baseUrl: DataConstants.restApiBaseUrl)
abstract class CategoryClient {
  static CategoryClient create(Dio dio) => CategoryClient(dio);

  factory CategoryClient(Dio dio, {String baseUrl}) = _CategoryClient;

  static const _apiModule = 'Category';

  @GET('$_apiModule/CategoryList')
  Future<HttpResponse<List<Category>>> getCategories();

  @GET('$_apiModule/CategorybyId')
  Future<HttpResponse<Category>> getCategoryById(@Query('id') int id);
}
