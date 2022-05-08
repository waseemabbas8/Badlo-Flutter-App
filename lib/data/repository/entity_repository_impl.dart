import 'package:badlo/data/source/entity_local_data_source.dart';
import 'package:badlo/domain/entity/entity.dart';

import '../../domain/repository/entity_repository.dart';

class EntityRepositoryImpl extends EntityRepository {
  final EntityLocalDataSource _entityLocalDataSource;

  EntityRepositoryImpl(this._entityLocalDataSource);

  @override
  Future<List<Entity>> getEntities() => _entityLocalDataSource.getEntities();
}