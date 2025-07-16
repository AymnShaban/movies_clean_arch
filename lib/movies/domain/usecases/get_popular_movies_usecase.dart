import 'package:movies_clean_arch/movies/domain/entites/movie.dart';
import 'package:movies_clean_arch/movies/domain/repository/base_movie_repo.dart';

class GetPopularMoviesUseCase {
  final BaseMoviesRepo baseMoviesRepo;

  GetPopularMoviesUseCase(this.baseMoviesRepo);

  Future<List<Movie>> execute() async {
    return await baseMoviesRepo.getNowPlaying();
  }
}
