import 'package:badlo/domain/repository/chat_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';

class ChatController extends BaseController {
  final ChatRepository _chatRepository;

  ChatController(this._chatRepository);
}
