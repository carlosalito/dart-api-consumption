import 'package:api_consumption/domain/entities/marvel_series_item.dart';

class MarvelSeriesEntity {
  final int available;
  final int returned;
  final String collectionURI;
  final List<MarvelSeriesItemEntity> items;

  MarvelSeriesEntity({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });
}
