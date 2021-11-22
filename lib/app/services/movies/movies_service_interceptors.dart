import 'package:dio/dio.dart';
import 'package:search_movie/app/services/movies/mocks/top250movies.dart';

class MoviesServiceInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    handler.resolve(Response(data: Top250Movies, requestOptions: options));
  }
}
