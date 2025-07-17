import 'package:dartz/dartz.dart';
import 'package:movies_clean_arch/movies/domain/entities/movie.dart';
import 'package:movies_clean_arch/movies/domain/repository/base_movie_repository.dart';

import '../../../core/error/failure.dart';

class GetPopularMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepo;

  GetPopularMoviesUseCase(this.baseMoviesRepo);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMoviesRepo.getNowPlayingMovies();
  }
}
