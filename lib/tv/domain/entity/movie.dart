import 'package:equatable/equatable.dart';

class Movies extends Equatable{
  final List<int> genreIds;
  final String backdrop_path;
  final num id;
  final String overview;
  final num vote_average;
  final String title;
  final String releasedate;

 const Movies({
   required this.releasedate,
    required this.genreIds,
    required this.backdrop_path,
    required this.id,
    required this.overview,
    required this.vote_average,
    required this.title,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    genreIds,
    backdrop_path,
    id,
    overview,
    vote_average,
    title
  ];



}
