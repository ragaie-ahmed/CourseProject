import 'package:courseproject/tv/domain/entity/movie.dart';

class MovieModel extends Movies {
const  MovieModel(
      {required super.releasedate,
      required super.genreIds,
      required super.backdrop_path,
      required super.id,
      required super.overview,
      required super.vote_average,
      required super.title});
  factory MovieModel.fromjson(Map<String,dynamic> json){
      return MovieModel(
          releasedate: json["release_date"],
          genreIds: List<int>.from(json["genre_ids"].map((e) => e)),
          backdrop_path: json["backdrop_path"],
          id: json["id"],
          overview: json["overview"],
          vote_average: json["vote_average"],
          title: json["title"]
      );
  }
}
