import 'package:badlo/data/source/category_remote_data_source.dart';
import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/category.dart';
import 'package:badlo/domain/repository/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final CategoryRemoteDataSource _categoryRemoteDataSource;

  CategoryRepositoryImpl(this._categoryRemoteDataSource);

  @override
  Future<GenericResponse<List<Category>>> getCategories() =>
      ResponseHandler.handle(() => _categoryRemoteDataSource.getCategories());

  @override
  Future<GenericResponse<Category>> getCategoryById(int id) =>
      ResponseHandler.handle(() => _categoryRemoteDataSource.getCategoryById(id));
}
