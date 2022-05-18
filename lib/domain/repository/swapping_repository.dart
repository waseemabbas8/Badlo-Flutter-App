import 'package:badlo/data/utils/response.dart';

import '../entity/e_product.dart';

abstract class SwappingRepository {
  Future<GenericResponse<List<EProduct>>> getProducts();
}
