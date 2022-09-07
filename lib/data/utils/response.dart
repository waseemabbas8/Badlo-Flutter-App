import 'dart:convert';

import 'package:badlo/presentation/core/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'dart:developer' as dev_log;
import 'package:dio/dio.dart';

class Result {
  Result._();

  factory Result.success(String foo, int code) = SuccessResult;

  factory Result.error(String foo, int code) = ErrorResult;
}

class ErrorResult extends Result {
  ErrorResult(this.msg, this.code) : super._();

  final String msg;
  final int code;
}

class SuccessResult extends Result {
  SuccessResult(this.msg, this.code) : super._();

  final String msg;
  final int code;
}

class SimpleResult extends Result {
  SimpleResult(this.msg) : super._();
  final String msg;
}

///Generic response class
class GenericResponse<T> {
  final Result? result;
  final T? data;

  GenericResponse({this.result, this.data});
}

///Response codes
abstract class ResponseCode {
  ResponseCode._();

  static const int ok = 200;
  static const int error = 400;
}

abstract class ResponseHandler {
  ResponseHandler._();

  static Future<GenericResponse<T>> handle<T>(
    RequestAction apiRequest,
  ) async {
    try {
      final httpResponse = await apiRequest.call();
      if (httpResponse.response.statusCode == ResponseCode.ok) {
        return GenericResponse<T>(
          result: Result.success(httpResponse.response.statusMessage ?? 'Success', ResponseCode.ok),
          data: httpResponse.data,
        );
      }
      return GenericResponse<T>(
        result: Result.error(
          httpResponse.response.statusMessage ?? 'Error',
          httpResponse.response.statusCode ?? ResponseCode.error,
        ),
        data: null,
      );
    } catch (e) {
      final String msg;
      if (e is DioError) {
        Map map = e.response?.data ?? {'Message': 'Some Error'};
        msg = map['Message'];
      } else {
        msg = e.toString();
      }
      dev_log.log(msg, name: AppLogs.networkLogs);
      return GenericResponse<T>(result: Result.error(msg, ResponseCode.error), data: null);
    }
  }
}

typedef RequestAction<T> = Future<HttpResponse<T>> Function();
