import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../../domain/entity/app_notification.dart';
import '../data_constants.dart';

part 'notifications_client.g.dart';

@RestApi(baseUrl: DataConstants.restApiBaseUrl)
abstract class NotificationsClient {
  static NotificationsClient create(Dio dio) => NotificationsClient(dio);

  factory NotificationsClient(Dio dio, {String baseUrl}) = _NotificationsClient;

  static const _apiModule = 'notification';

  @GET('$_apiModule/getNotifications')
  Future<HttpResponse<List<AppNotification>>> getNotifications(@Query('profileId') int profileId);

  @GET('$_apiModule/getUnreadCounts')
  Future<HttpResponse<UnreadMessageCountBody>> getUnreadCounts(@Query('profileId') int profileId);
}
