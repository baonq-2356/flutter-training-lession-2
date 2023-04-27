import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie.freezed.dart';

part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    @JsonKey(name: 'poster_path') String? posterPath,
    @Default(0) int? id,
    String? title,
    bool? adult,
    String? overview,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    double? popularity,
    @JsonKey(name: 'vote_count') int? voteCount,
    @JsonKey(name: 'vote_average') double? voteAverage,
  }) = _Movie;

  factory Movie.fromJson(Map<String, Object?> json) => _$MovieFromJson(json);
}
