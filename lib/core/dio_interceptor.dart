import 'package:dio/dio.dart';
import 'package:hakaton_teamspace/core/logger.dart';

final class LoggerDioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Logger.apiCall(options);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Logger.apiResult(response);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    Logger.dioException(err);
    super.onError(err, handler);
  }
}
