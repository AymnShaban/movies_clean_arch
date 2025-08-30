import 'package:equatable/equatable.dart';
import 'package:movies_clean_arch/movies/domain/entities/genres.dart';

class MovieDetails extends Equatable {
  final int id;
  final String backdropPath;
  final String title;
  final String overView;
  final String releaseData;
  final int runTime;
  final int voteAverage;
  final List<Genres> genres;

  const MovieDetails({
    required this.genres,
    required this.id,
    required this.backdropPath,
    required this.title,
    required this.overView,
    required this.releaseData,
    required this.runTime,
    required this.voteAverage,
  });

  @override
  List<Object> get props => [
    genres,
    id,
    backdropPath,
    title,
    overView,
    releaseData,
    runTime,
    voteAverage,
  ];
}
