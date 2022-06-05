import 'package:badlo/data/source/data_source.dart';
import 'package:badlo/data/utils/network/swapping_client.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/entity/e_product.dart';

class SwappingRemoteDataSource extends DataSource {
  final SwappingClient _swappingClient;

  SwappingRemoteDataSource(this._swappingClient);

  Future<HttpResponse<List<EProduct>>> getSwappingProducts() => _swappingClient.getProducts();
}
