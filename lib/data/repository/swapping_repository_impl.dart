import 'package:badlo/data/source/swapping_remote_data_source.dart';
import 'package:badlo/data/utils/response.dart';

import '../../domain/entity/e_product.dart';
import '../../domain/repository/swapping_repository.dart';

class SwappingRepositoryImpl extends SwappingRepository {
  final SwappingRemoteDataSource _swappingRemoteDataSource;

  SwappingRepositoryImpl(this._swappingRemoteDataSource);

  @override
  Future<GenericResponse<List<EProduct>>> getProducts() =>
      ResponseHandler.handle(_swappingRemoteDataSource.getSwappingProducts);
}
