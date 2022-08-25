import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class Comment {
  @JsonKey(name: 'Comments')
  String comments;
  @JsonKey(name: 'CommentsID')
  int id;
  @JsonKey(name: 'PostedBy')
  String postedBy;
  @JsonKey(name: 'PostedDate')
  String postedDate;
  @JsonKey(name: 'ProductId')
  int productId;

  Comment({
    this.id = 0,
    required this.comments,
    required this.postedBy,
    required this.postedDate,
    required this.productId,
  });

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
