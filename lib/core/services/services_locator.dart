import 'package:get_it/get_it.dart';
import 'package:movies_clean_arch/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies_clean_arch/movies/data/repository/movies_repository.dart';
import 'package:movies_clean_arch/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_clean_arch/movies/domain/usecases/get__now_playing_movies_usecase.dart';
import 'package:movies_clean_arch/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies_clean_arch/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movies_clean_arch/movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
      () => MovieRemoteDataSource(),
    );
    sl.registerLazySingleton<BaseMoviesRepository>(
      () => MoviesRepository(sl()),
    );
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));
  }
}
