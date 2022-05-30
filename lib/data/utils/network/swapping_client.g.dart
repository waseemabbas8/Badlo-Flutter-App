// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swapping_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _SwappingClient implements SwappingClient {
  _SwappingClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://badlo.com/api/v1';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<List<EProduct>>> getProducts() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<HttpResponse<List<EProduct>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'swapping/products',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => EProduct.fromJson(i as Map<String, dynamic>))
        .toList();
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}