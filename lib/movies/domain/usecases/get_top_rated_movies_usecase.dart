import 'package:movies_clean_arch/movies/domain/entites/movie.dart';
import 'package:movies_clean_arch/movies/domain/repository/base_movie_repo.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepo baseMoviesRepo;

  GetTopRatedMoviesUseCase(this.baseMoviesRepo);

  Future<List<Movie>> execute() async {
    return await baseMoviesRepo.getNowPlaying();
  }
}
