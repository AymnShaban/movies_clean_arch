import 'package:movies_clean_arch/movies/domain/entities/movie.dart';

class MoviesModel extends Movie {
  const MoviesModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genreIds,
    required super.overview,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MoviesModel.formJson(Map<String, dynamic> json) => MoviesModel(
    id: json['id'],
    title: json['title'],
    backdropPath: json['backdrop_path'],
    genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
    overview: json['overview'],
    voteAverage: json['vote_average'],
    releaseDate: json['release_date'],
  );
}
