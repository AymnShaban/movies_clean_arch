class ApiConstance {
  static const String baseUrl = 'https://api.themoviedb.org/3/';
  static const String apiKey = '?api_key=af21742ee103b40878a51671561e7700';
  static const String nowPlayingMoviesPath =
      '${baseUrl}movie/now_playing$apiKey';
  static const String popularMoviesPath = '${baseUrl}movie/popular$apiKey';
  static const String topRatedMoviesPath = '${baseUrl}movie/top_rated$apiKey';
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseUrl$path';
}
