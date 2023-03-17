import 'package:api_consumption/domain/entities/marvel_series.dart';

class MarvelCharactersEntity {
  final int id;
  final String name;
  final String about;
  final MarvelSeriesEntity series;

  MarvelCharactersEntity({
    required this.name,
    required this.about,
    required this.id,
    required this.series,
  });
}
