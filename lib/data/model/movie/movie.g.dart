// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      posterPath: json['poster_path'] as String?,
      id: json['id'] as int? ?? 0,
      title: json['title'] as String?,
      adult: json['adult'] as bool?,
      overview: json['overview'] as String?,
      releaseDate: json['release_date'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'poster_path': instance.posterPath,
      'id': instance.id,
      'title': instance.title,
      'adult': instance.adult,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'backdrop_path': instance.backdropPath,
      'popularity': instance.popularity,
      'vote_count': instance.voteCount,
      'vote_average': instance.voteAverage,
    };
