import 'package:badlo/data/source/comment_remote_data_source.dart';
import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/comment.dart';
import 'package:badlo/domain/repository/comment_repository.dart';

class CommentRepositoryImpl extends CommentRepository {
  final CommentRemoteDataSource _commentRemoteDataSource;

  CommentRepositoryImpl(this._commentRemoteDataSource);

  @override
  Future<GenericResponse<String>> addComment(Comment comment) =>
      ResponseHandler.handle(() => _commentRemoteDataSource.addComment(comment));

  @override
  Future<GenericResponse<List<Comment>>> getComments(int productId) =>
      ResponseHandler.handle(() => _commentRemoteDataSource.getComments(productId));
}
