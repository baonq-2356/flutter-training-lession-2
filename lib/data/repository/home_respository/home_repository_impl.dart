import 'package:dio/dio.dart';
import 'package:lession_2/data/api/movie_api.dart';
import 'package:lession_2/data/model/popular/popular_movies.dart';
import 'package:lession_2/data/repository/home_respository/home_repository.dart';
import 'package:logger/logger.dart';

class HomeRepositoryImpl extends HomeRepository {

  final logger = Logger();
  final dio = Dio();
  late MovieApi movieApi;

  HomeRepositoryImpl() {
    movieApi = MovieApi(dio);
  }

  final apiKey = "d409436607d9432311fdcfafb0e33f9e";

  @override
  Future<PopularMovies> getPopularMovies() async {
    final response = movieApi.getPopularMovies(apiKey);
    response.then((it) => logger.i(it));
    return response;
  }
}
