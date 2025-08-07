import 'package:equatable/equatable.dart';
import 'package:movies_clean_arch/core/utils/enums.dart';

import '../../domain/entities/movie.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;
  final List<Movie> popularMovies;
  final RequestState popularState;
  final String popularMessage;

  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = '',
    this.popularMovies = const [],
    this.popularState = RequestState.loading,
    this.popularMessage = '',
  });

  @override
  List<Object> get props => [
    nowPlayingMovies,
    nowPlayingState,
    nowPlayingMessage,
    popularMovies,
    popularState,
    popularMessage,
  ];
}
