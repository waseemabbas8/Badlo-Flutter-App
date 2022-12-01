import 'package:get/get.dart';

import '../../../domain/entity/app_notification.dart';
import '../../../domain/repository/notifications_repository.dart';
import '../../core/base/base_controller.dart';

class NotificationsController extends BaseController {
  final NotificationsRepository _notificationsRepository;

  NotificationsController(this._notificationsRepository);

  final RxList<AppNotification> _notifications = RxList();

  List<AppNotification> get notifications => _notifications;

  @override
  void onInit() {
    _getNotifications();
    super.onInit();
  }

  void _getNotifications() async {
    final list = [
      AppNotification('Did you know?', 'Here is something that might like to know.', 3),
      AppNotification(
          'Uh oh, something went wrong', 'Sorry there was a problem with your request', 1),
      AppNotification('Order 20ER23 success', 'Your order has been completed.', 2),
      AppNotification('Did you know?', 'Here is something that might like to know.', 1),
      AppNotification('Order Cancelled', 'We could not process your order. Check your mail.', 4),
    ];
    _notifications.value = list;
  }
}
