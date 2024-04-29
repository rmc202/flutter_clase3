import 'package:flutter/material.dart';
import 'package:flutter_c3/datasource/movie_datasource.dart';
import 'package:flutter_c3/domain/movie.dart';

class MovieDetailScreen extends StatelessWidget {
  static const String name = 'movie_detail_screen';

  final String movieId;
  const MovieDetailScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Detail'),
      ),
      body: MovieDetailView(
        movieId: movieId,
      ),
    );
  }
}

class MovieDetailView extends StatelessWidget {
  final String movieId;

  const MovieDetailView({
    super.key,
    required this.movieId,
  });

  @override
  Widget build(BuildContext context) {
    final Movie movie = movies.firstWhere((movie) => movie.id == movieId);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(movie.title),
          Text(movie.director),
          Text(movie.year.toString()),
        ],
      ),
    );
  }
}
