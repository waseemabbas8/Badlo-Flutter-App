import '../../data/utils/response.dart';
import '../entity/app_notification.dart';

abstract class NotificationsRepository {
  Future<GenericResponse<List<AppNotification>>> getNotifications(int profileId);
}
