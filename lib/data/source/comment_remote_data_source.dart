import 'package:badlo/data/source/data_source.dart';
import 'package:badlo/data/utils/network/comment_client.dart';
import 'package:badlo/domain/entity/comment.dart';
import 'package:retrofit/retrofit.dart';

class CommentRemoteDataSource extends DataSource {
  final CommentClient _commentClient;

  CommentRemoteDataSource(this._commentClient);

  Future<HttpResponse<List<Comment>>> getComments(int productId) =>
      _commentClient.getComments(productId);

  Future<HttpResponse<String>> addComment(Comment comment) => _commentClient.addComment(comment);
}
