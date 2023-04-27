// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularMovies _$PopularMoviesFromJson(Map<String, dynamic> json) {
  return _PopularMovies.fromJson(json);
}

/// @nodoc
mixin _$PopularMovies {
  List<Movie>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularMoviesCopyWith<PopularMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesCopyWith<$Res> {
  factory $PopularMoviesCopyWith(
          PopularMovies value, $Res Function(PopularMovies) then) =
      _$PopularMoviesCopyWithImpl<$Res, PopularMovies>;
  @useResult
  $Res call({List<Movie>? results});
}

/// @nodoc
class _$PopularMoviesCopyWithImpl<$Res, $Val extends PopularMovies>
    implements $PopularMoviesCopyWith<$Res> {
  _$PopularMoviesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PopularMoviesCopyWith<$Res>
    implements $PopularMoviesCopyWith<$Res> {
  factory _$$_PopularMoviesCopyWith(
          _$_PopularMovies value, $Res Function(_$_PopularMovies) then) =
      __$$_PopularMoviesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Movie>? results});
}

/// @nodoc
class __$$_PopularMoviesCopyWithImpl<$Res>
    extends _$PopularMoviesCopyWithImpl<$Res, _$_PopularMovies>
    implements _$$_PopularMoviesCopyWith<$Res> {
  __$$_PopularMoviesCopyWithImpl(
      _$_PopularMovies _value, $Res Function(_$_PopularMovies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_PopularMovies(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PopularMovies with DiagnosticableTreeMixin implements _PopularMovies {
  const _$_PopularMovies({final List<Movie>? results}) : _results = results;

  factory _$_PopularMovies.fromJson(Map<String, dynamic> json) =>
      _$$_PopularMoviesFromJson(json);

  final List<Movie>? _results;
  @override
  List<Movie>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PopularMovies(results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PopularMovies'))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopularMovies &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PopularMoviesCopyWith<_$_PopularMovies> get copyWith =>
      __$$_PopularMoviesCopyWithImpl<_$_PopularMovies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PopularMoviesToJson(
      this,
    );
  }
}

abstract class _PopularMovies implements PopularMovies {
  const factory _PopularMovies({final List<Movie>? results}) = _$_PopularMovies;

  factory _PopularMovies.fromJson(Map<String, dynamic> json) =
      _$_PopularMovies.fromJson;

  @override
  List<Movie>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_PopularMoviesCopyWith<_$_PopularMovies> get copyWith =>
      throw _privateConstructorUsedError;
}
