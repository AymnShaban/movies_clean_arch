import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_clean_arch/core/utils/enums.dart';
import 'package:movies_clean_arch/movies/domain/usecases/get__now_playing_movies_usecase.dart';
import 'package:movies_clean_arch/movies/domain/usecases/get_popular_movies_usecase.dart';

import 'movies_event.dart';
import 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;

  MoviesBloc(this.getNowPlayingMoviesUseCase, this.getPopularMoviesUseCase)
    : super(MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase.execute();
      result.fold(
        (l) => emit(
          MoviesState(
            nowPlayingState: RequestState.error,
            nowPlayingMessage: l.message,
          ),
        ),
        (r) => emit(
          MoviesState(
            nowPlayingState: RequestState.loaded,
            nowPlayingMovies: r,
          ),
        ),
      );
    });
    on<GetNowPopularMoviesEvent>((event, emit) async {
      final result = await getPopularMoviesUseCase.execute();
      result.fold(
        (l) => emit(
          MoviesState(
            nowPlayingState: RequestState.error,
            nowPlayingMessage: l.message,
          ),
        ),
        (r) => emit(
          MoviesState(
            nowPlayingState: RequestState.loaded,
            nowPlayingMovies: r,
          ),
        ),
      );
    });
  }
}
