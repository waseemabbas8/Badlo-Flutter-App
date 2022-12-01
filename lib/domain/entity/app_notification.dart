import 'package:json_annotation/json_annotation.dart';

part 'app_notification.g.dart';

@JsonSerializable()
class AppNotification {
  final String title;
  final String body;
  final int type;

  AppNotification(this.title, this.body, this.type);

  factory AppNotification.fromJson(Map<String, dynamic> json) => _$AppNotificationFromJson(json);

  Map<String, dynamic> toJson() => _$AppNotificationToJson(this);

  NotificationType getNotificationType() => NotificationType.getByValue(type);
}

enum NotificationType {
  warning,
  success,
  info,
  error;

  static NotificationType getByValue(int value) {
    switch (value) {
      case 1:
        return NotificationType.warning;
      case 2:
        return NotificationType.success;
      case 3:
        return NotificationType.info;
      case 4:
        return NotificationType.error;
    }
    return NotificationType.warning;
  }
}

@JsonSerializable()
class UnreadMessageCountBody {
  @JsonKey(name: 'unReadNotifications')
  final int count;

  UnreadMessageCountBody(this.count);

  factory UnreadMessageCountBody.fromJson(Map<String, dynamic> json) =>
      _$UnreadMessageCountBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UnreadMessageCountBodyToJson(this);
}
