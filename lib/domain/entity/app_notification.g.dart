// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppNotification _$AppNotificationFromJson(Map<String, dynamic> json) =>
    AppNotification(
      json['title'] as String,
      json['body'] as String,
      json['type'] as int,
    );

Map<String, dynamic> _$AppNotificationToJson(AppNotification instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'type': instance.type,
    };

UnreadMessageCountBody _$UnreadMessageCountBodyFromJson(
        Map<String, dynamic> json) =>
    UnreadMessageCountBody(
      json['unReadNotifications'] as int,
    );

Map<String, dynamic> _$UnreadMessageCountBodyToJson(
        UnreadMessageCountBody instance) =>
    <String, dynamic>{
      'unReadNotifications': instance.count,
    };
