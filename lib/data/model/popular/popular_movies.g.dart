// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PopularMovies _$$_PopularMoviesFromJson(Map<String, dynamic> json) =>
    _$_PopularMovies(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PopularMoviesToJson(_$_PopularMovies instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
