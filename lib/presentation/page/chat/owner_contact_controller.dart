import 'package:badlo/domain/repository/chat_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';

class OwnerContactController extends BaseController {
  final ChatRepository _chatRepository;

  OwnerContactController(this._chatRepository);

  void onSendMessageButtonPressed() {}
}
