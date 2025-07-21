import 'package:get_it/get_it.dart';
import 'package:movies_clean_arch/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_clean_arch/movies/data/repository/movies_repository.dart';
import 'package:movies_clean_arch/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_clean_arch/movies/domain/usecases/get__now_playing_movies_usecase.dart';

final serviceLocator = GetIt.instance;

class ServicesLocator {
  void init() {
    serviceLocator.registerLazySingleton<BaseMovieRemoteDataSource>(
      () => MovieRemoteDataSource(),
    );
    serviceLocator.registerLazySingleton<BaseMoviesRepository>(
      () => MoviesRepository(serviceLocator()),
    );
    serviceLocator.registerLazySingleton<GetNowPlayingMoviesUseCase>(
      () => GetNowPlayingMoviesUseCase(
        serviceLocator.get<BaseMoviesRepository>(),
      ),
    );
  }
}
