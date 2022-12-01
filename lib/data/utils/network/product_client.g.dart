// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ProductClient implements ProductClient {
  _ProductClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://badlo.pk/api/';
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
        _setStreamType<HttpResponse<List<EProduct>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'Product/ProductList',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => EProduct.fromJson(i as Map<String, dynamic>))
        .toList();
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<EProduct>> getProductById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': id};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<EProduct>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'Product/ProductbyId',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EProduct.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<String>> addProduct({
    required categoryId,
    required profileId,
    required name,
    required price,
    required description,
    required shortDescription,
    required marketPlace,
    required address,
    required inspectionStatus,
    required isInspection,
    required latitude,
    required longitude,
    required images,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry(
      'CategoryId',
      categoryId.toString(),
    ));
    _data.fields.add(MapEntry(
      'ProfileID',
      profileId.toString(),
    ));
    _data.fields.add(MapEntry(
      'ProductName',
      name,
    ));
    _data.fields.add(MapEntry(
      'Price',
      price.toString(),
    ));
    _data.fields.add(MapEntry(
      'Description',
      description,
    ));
    _data.fields.add(MapEntry(
      'ShortDescription',
      shortDescription,
    ));
    _data.fields.add(MapEntry(
      'MarketPlace',
      marketPlace.toString(),
    ));
    _data.fields.add(MapEntry(
      'Address',
      address,
    ));
    _data.fields.add(MapEntry(
      'InspectionStatus',
      inspectionStatus,
    ));
    _data.fields.add(MapEntry(
      'IsInspection',
      isInspection.toString(),
    ));
    _data.fields.add(MapEntry(
      'Latitude',
      latitude,
    ));
    _data.fields.add(MapEntry(
      'Longitude',
      longitude,
    ));
    _data.files.addAll(images.map((i) => MapEntry('images', i)));
    final _result =
        await _dio.fetch<String>(_setStreamType<HttpResponse<String>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              'Product/Add',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<String>> updateProduct(product) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(product.toJson());
    final _result =
        await _dio.fetch<String>(_setStreamType<HttpResponse<String>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'Product/Edit',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
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
