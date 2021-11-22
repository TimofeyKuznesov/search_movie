import 'package:dio/dio.dart';

import './models/index.dart';
import './movies_service_interceptors.dart';

const apiKey = 'apiKeyTest';

class MoviesService {
  static final MoviesService _singleton = MoviesService._internal();
  final _dio = Dio(
    BaseOptions(baseUrl: "https://imdb-api.com/en/API/"),
  );

  factory MoviesService() {
    return _singleton;
  }

  MoviesService._internal() {
    _dio.interceptors.add(MoviesServiceInterceptors());
  }
  Future<List<Top250DataDetail>> getTopMovies() =>
      _dio.get<Map<String, dynamic>>('/Top250Movies/$apiKey').then(
        (response) {
          final top250Data = Top250Data.fromJson(response.data ?? {});
          if (top250Data.errorMessage == null) {
            throw Exception(top250Data.errorMessage);
          }
          return top250Data.items;
        },
      ).catchError((error) => print(error));
}
