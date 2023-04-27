import 'package:flutter/material.dart';
import 'package:lession_2/data/model/movie/movie.dart';
import 'package:logger/logger.dart';

import '../data/repository/home_respository/home_repository.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeRepository homeRepository;

  HomeViewModel({required this.homeRepository});

  final logger = Logger();
  List<Movie> movies = [];

  Future<void> getPopularMovies() async {
    final popularMovies = await homeRepository.getPopularMovies();
    movies.addAll(popularMovies.results?.toList() ?? []);
    logger.i('length: ${movies.length}');
    notifyListeners();
  }
}
