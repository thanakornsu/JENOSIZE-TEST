import 'package:dio/dio.dart';

class SmartDioInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError e, ErrorInterceptorHandler handler) async {
    print('ERROR[${e.response.toString()}] => PATH: ${e.requestOptions.path}');
    return super.onError(e, handler);
  }
}
