import 'package:badlo/data/utils/data_constants.dart';
import 'package:badlo/domain/entity/comment.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'comment_client.g.dart';

@RestApi(baseUrl: DataConstants.restApiBaseUrl)
abstract class CommentClient {
  static CommentClient create(Dio dio) => CommentClient(dio);

  factory CommentClient(Dio dio, {String baseUrl}) = _CommentClient;

  static const _apiModule = 'Comments';

  @GET('$_apiModule/getComments')
  Future<HttpResponse<List<Comment>>> getComments(@Query('prodId') int productId);

  @POST('$_apiModule/Add')
  Future<HttpResponse<String>> addComment(
    @Body() Comment comment,
  );
}
