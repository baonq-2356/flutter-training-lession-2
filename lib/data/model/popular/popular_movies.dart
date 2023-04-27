import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../movie/movie.dart';

part 'popular_movies.freezed.dart';

part 'popular_movies.g.dart';

@freezed
class PopularMovies with _$PopularMovies {
  const factory PopularMovies({
    List<Movie>? results,
  }) = _PopularMovies;

  factory PopularMovies.fromJson(Map<String, Object?> json) =>
      _$PopularMoviesFromJson(json);
}
