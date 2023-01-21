// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageRequestBody _$SendMessageRequestBodyFromJson(
        Map<String, dynamic> json) =>
    SendMessageRequestBody(
      id: json['id'] as int,
      message: json['message'] as String,
      profileId: json['profileId'] as int,
      receiverId: json['receiverId'] as int,
    );

Map<String, dynamic> _$SendMessageRequestBodyToJson(
        SendMessageRequestBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'profileId': instance.profileId,
      'receiverId': instance.receiverId,
    };
