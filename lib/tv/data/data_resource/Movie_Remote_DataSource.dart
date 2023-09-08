import 'package:courseproject/core/Networkerror/error_Network_model.dart';
import 'package:courseproject/core/app/app_constant.dart';
import 'package:courseproject/core/error/exception.dart';
import 'package:courseproject/tv/data/models/Moviemodel.dart';
import 'package:dio/dio.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlaying();

  Future<List<MovieModel>> getPouplarMovie();

  Future<List<MovieModel>> getTopRated();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlaying() async {
    final response = await Dio().get(AppConstant.nowPlayingapi);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerError(
          errorNetworkModel: ErrorNetworkModel.fromJson(json: response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPouplarMovie() async {
    final response = await Dio().get(AppConstant.PopularMovie);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data["results"]).map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerError(
          errorNetworkModel: ErrorNetworkModel.fromJson(json: response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRated() async {
    final response = await Dio().get(AppConstant.topRatedMovie);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data["results"]).map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerError(
          errorNetworkModel: ErrorNetworkModel.fromJson(json: response.data));
    }
  }
}
