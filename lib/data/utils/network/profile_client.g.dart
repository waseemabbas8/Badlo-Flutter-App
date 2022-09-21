// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ProfileClient implements ProfileClient {
  _ProfileClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://admin.learnnex.net/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<UserProfile?>> add(
      {required authId,
      required name,
      required nic,
      required address,
      required contactNumber,
      required description,
      required image}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('AuthId', authId.toString()));
    _data.fields.add(MapEntry('Name', name));
    _data.fields.add(MapEntry('NIc', nic));
    _data.fields.add(MapEntry('Address', address));
    _data.fields.add(MapEntry('ContactNumber', contactNumber));
    _data.fields.add(MapEntry('Description', description));
    _data.files.addAll(image.map((i) => MapEntry('image', i)));
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<HttpResponse<UserProfile>>(Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: 'multipart/form-data')
            .compose(_dio.options, 'Profile/Add',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        _result.data == null ? null : UserProfile.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<UserProfile?>> edit(
      {required profileId,
      required authId,
      required name,
      required nic,
      required address,
      required contactNumber,
      required description,
      required image}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('ID', profileId.toString()));
    _data.fields.add(MapEntry('AuthId', authId.toString()));
    _data.fields.add(MapEntry('Name', name));
    _data.fields.add(MapEntry('NIc', nic));
    _data.fields.add(MapEntry('Address', address));
    _data.fields.add(MapEntry('ContactNumber', contactNumber));
    _data.fields.add(MapEntry('Description', description));
    _data.files.addAll(image.map((i) => MapEntry('image', i)));
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<HttpResponse<UserProfile>>(Options(
                method: 'PUT',
                headers: _headers,
                extra: _extra,
                contentType: 'multipart/form-data')
            .compose(_dio.options, 'Profile/Edit',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        _result.data == null ? null : UserProfile.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<UserProfile?>> get(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'id': id};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<HttpResponse<UserProfile>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'Profile/ProfilbyId',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        _result.data == null ? null : UserProfile.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<UserProfile?>> getByAuthId(authId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'authId': authId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<HttpResponse<UserProfile>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'Profile/ProfileByAuthId',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        _result.data == null ? null : UserProfile.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<List<UserProfile>>> getProfiles() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<HttpResponse<List<UserProfile>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'Profile/ProfileList',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => UserProfile.fromJson(i as Map<String, dynamic>))
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
