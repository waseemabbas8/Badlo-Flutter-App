import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/comment.dart';

abstract class CommentRepository {
  Future<GenericResponse<List<Comment>>> getComments(int productId);
  Future<GenericResponse<String>> addComment(Comment comment);
}
