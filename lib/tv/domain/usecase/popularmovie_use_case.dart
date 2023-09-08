import 'package:courseproject/tv/domain/entity/movie.dart';
import 'package:courseproject/tv/domain/repositery/basemovierepositry.dart';

class UseCasePopularMovie{
  UseCasePopularMovie(this.basemovierepositry);
  Basemovierepositry basemovierepositry;
  Future<List<Movies>> excute()async{
    return await basemovierepositry.getPopularMovie();
  }
}