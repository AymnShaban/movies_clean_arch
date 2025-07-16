import 'package:movies_clean_arch/movies/domain/entites/movie.dart';

abstract class BaseMoviesRepo {
  Future<List<Movie>> getNowPlaying();

  Future<List<Movie>> getPopularMovies();

  Future<List<Movie>> getTopRatedMovies();
}
