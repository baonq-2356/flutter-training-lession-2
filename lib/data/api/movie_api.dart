import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../model/popular/popular_movies.dart';

part 'movie_api.g.dart';

@RestApi(baseUrl: "https://api.themoviedb.org/3")
abstract class MovieApi {
  factory MovieApi(Dio dio, {String baseUrl}) = _MovieApi;

  @GET('/movie/popular')
  Future<PopularMovies> getPopularMovies(@Query("api_key") String apiKey);
}
