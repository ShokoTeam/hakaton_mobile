import 'package:dio/dio.dart';
import 'package:hakaton_teamspace/core/dio_interceptor.dart';

abstract class Api {
  static final _dio = Dio(BaseOptions(
    baseUrl: 'http://89.111.170.200:8080/api/',
    contentType: 'application/json',
    connectTimeout: const Duration(seconds: 20),
  ))
    ..interceptors.add(LoggerDioInterceptor());

  static Dio get dio {
    if (token == null) return _dio;
    final authOptions = _dio.options.copyWith(headers: {'Authorization': 'Bearer $token'});
    return _dio..options = authOptions;
  }

  static String? token;
  static void setToken(String newToken) => token = newToken;
}
