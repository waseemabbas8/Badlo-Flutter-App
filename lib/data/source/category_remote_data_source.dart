import 'package:badlo/data/utils/network/category_client.dart';
import 'package:badlo/domain/entity/category.dart';
import 'package:retrofit/retrofit.dart';

import 'data_source.dart';

class CategoryRemoteDataSource extends DataSource {
  final CategoryClient _categoryClient;

  CategoryRemoteDataSource(this._categoryClient);

  Future<HttpResponse<List<Category>>> getCategories() => _categoryClient.getCategories();

  Future<HttpResponse<Category>> getCategoryById(int id) => _categoryClient.getCategoryById(id);
}
