import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter_c3/datasource/movie_datasource.dart';
//import 'package:go_router/go_router.dart';
import 'package:flutter_c3/domain/movie.dart';
import 'package:go_router/go_router.dart';
//import 'package:flutter_c3/presentation/screens/movie_detail_screen.dart';

class MoviesScreen extends StatelessWidget {
  static const String name = 'movies_screen';

  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: const MoviesView(),
    );
  }
}

class MoviesView extends StatelessWidget {
  const MoviesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return MovieItemView(
            movie: movie,
          );
        });
  }
}

class MovieItemView extends StatelessWidget {
  final Movie movie;

  MovieItemView({
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(movie.title),
        subtitle: Text(movie.director),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          context.push('/movie_detail/${movie.id}');
        },
      ),
    );
  }
}
