import 'package:dartz/dartz.dart';
import 'package:movies_clean_arch/core/usecases/base_usecase.dart';
import 'package:movies_clean_arch/movies/domain/entities/movie.dart';
import 'package:movies_clean_arch/movies/domain/repository/base_movie_repository.dart';

import '../../../core/error/failure.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<Movie>,NoParameters> {
  final BaseMoviesRepository baseMoviesRepo;

  GetPopularMoviesUseCase(this.baseMoviesRepo);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameter) async {
    return await baseMoviesRepo.getPopularMovies();
  }
}
