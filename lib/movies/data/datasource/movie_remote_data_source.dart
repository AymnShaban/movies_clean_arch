import 'package:dio/dio.dart';
import 'package:movies_clean_arch/core/error/exceptions.dart';
import 'package:movies_clean_arch/core/network/error_message_model.dart';
import 'package:movies_clean_arch/movies/data/models/movies_model.dart';

class MovieRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio().get(
      'https://api.themoviedb.org/3/movie/now_playing?api_key=af21742ee103b40878a51671561e7700&page=1',
    );
    if (response.statusCode == 200) {
      return List<MoviesModel>.from(
        (response.data['results'] as List).map((e) => MoviesModel.formJson(e)),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
