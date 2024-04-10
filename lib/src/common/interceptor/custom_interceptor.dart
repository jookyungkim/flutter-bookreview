import 'package:dio/dio.dart';

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['X-Naver-Client-Id'] = 'UpT3tDRSe5fs9C_HtY3w';
    options.headers['X-Naver-Client-Secret'] = 'a8hJZrKr8v';
    super.onRequest(options, handler);
  }
}
