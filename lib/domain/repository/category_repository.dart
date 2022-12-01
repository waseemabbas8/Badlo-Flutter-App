import 'package:badlo/data/utils/response.dart';

import '../entity/category.dart';

abstract class CategoryRepository {
  Future<GenericResponse<List<Category>>> getCategories();
  Future<GenericResponse<Category>> getCategoryById(int id);
}
