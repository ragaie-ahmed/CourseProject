import 'package:courseproject/tv/domain/entity/movie.dart';
import 'package:courseproject/tv/domain/repositery/basemovierepositry.dart';

class UseCaseTopRated{
  UseCaseTopRated(this.basemovierepositry);
  Basemovierepositry basemovierepositry;
  Future<List<Movies>>excute()async{
    return await basemovierepositry.getTopRated();
  }
}