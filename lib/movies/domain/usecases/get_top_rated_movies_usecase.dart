import 'package:dartz/dartz.dart';
import 'package:movies_clean_arch/movies/domain/entities/movie.dart';
import 'package:movies_clean_arch/movies/domain/repository/base_movie_repository.dart';

import '../../../core/error/failure.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepo;

  GetTopRatedMoviesUseCase(this.baseMoviesRepo);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMoviesRepo.getNowPlayingMovies();
  }
}
