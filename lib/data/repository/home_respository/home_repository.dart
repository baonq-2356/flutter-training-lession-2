import 'package:lession_2/data/model/popular/popular_movies.dart';

abstract class HomeRepository {
  Future<PopularMovies> getPopularMovies();
}
