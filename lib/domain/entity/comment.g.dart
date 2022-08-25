// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      id: json['CommentsID'] as int? ?? 0,
      comments: json['Comments'] as String,
      postedBy: json['PostedBy'] as String,
      postedDate: json['PostedDate'] as String,
      productId: json['ProductId'] as int,
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'Comments': instance.comments,
      'CommentsID': instance.id,
      'PostedBy': instance.postedBy,
      'PostedDate': instance.postedDate,
      'ProductId': instance.productId,
    };
