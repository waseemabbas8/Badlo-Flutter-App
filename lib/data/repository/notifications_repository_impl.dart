import 'package:badlo/data/utils/response.dart';

import 'package:badlo/domain/entity/app_notification.dart';

import '../../domain/repository/notifications_repository.dart';
import '../source/notifications_remote_data_source.dart';

class NotificationsRepositoryImpl implements NotificationsRepository {
  final NotificationsRemoteDataSource _dataSource;

  NotificationsRepositoryImpl(this._dataSource);

  @override
  Future<GenericResponse<List<AppNotification>>> getNotifications(int profileId) =>
      ResponseHandler.handle(() => _dataSource.getNotifications(profileId));
}
