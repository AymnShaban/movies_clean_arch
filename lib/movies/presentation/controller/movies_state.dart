import 'package:equatable/equatable.dart';
import 'package:movies_clean_arch/core/utils/enums.dart';

import '../../domain/entities/movie.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;

  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = '',
  });

  @override
  List<Object> get props => [
    nowPlayingMovies,
    nowPlayingState,
    nowPlayingMessage,
  ];
}
