
import '../entity/entity.dart';

abstract class EntityRepository {
  Future<List<Entity>> getEntities();
}