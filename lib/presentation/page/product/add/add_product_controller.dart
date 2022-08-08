import 'package:badlo/domain/repository/product_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';

class AddProductController extends BaseController {
  final ProductRepository productRepository;

  AddProductController(this.productRepository);
}
