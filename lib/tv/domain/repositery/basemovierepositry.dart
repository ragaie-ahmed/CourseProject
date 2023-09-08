import 'package:courseproject/tv/domain/entity/movie.dart';

abstract class Basemovierepositry{
  Future <List<Movies>> getNowplaying();
  Future <List<Movies>> getPopularMovie();
  Future <List<Movies>> getTopRated();
}