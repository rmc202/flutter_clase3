import 'package:flutter_c3/presentation/screens/movie_detail_screen.dart';
import 'package:flutter_c3/presentation/screens/movies_screen.dart';
import 'package:go_router/go_router.dart';
//import 'package:flutter_c3/domain/movie.dart';

final appRouter = GoRouter(
  initialLocation: '/movies',
  routes: [
    GoRoute(
      path: '/movies',
      name: MoviesScreen.name,
      builder: (context, state) => const MoviesScreen(),
    ),
    GoRoute(
      path: '/movie_detail/:movieId',
      name: MovieDetailScreen.name,
      builder: (context, state) => MovieDetailScreen(
        movieId: state.pathParameters['movieId']!,
      ),
    )
  ],
);
