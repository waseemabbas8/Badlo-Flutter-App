import '../../domain/entity/app_notification.dart';
import '../utils/network/notifications_client.dart';
import 'package:retrofit/retrofit.dart';

import 'data_source.dart';

class NotificationsRemoteDataSource extends DataSource {
  final NotificationsClient _client;

  NotificationsRemoteDataSource(this._client);

  Future<HttpResponse<List<AppNotification>>> getNotifications(int profileId) =>
      _client.getNotifications(profileId);

  Future<HttpResponse<UnreadMessageCountBody>> getUnreadCounts(int profileId) =>
      _client.getUnreadCounts(profileId);
}
