import 'package:api_consumption/data/models/marvel_series_item_model.dart';
import 'package:api_consumption/domain/entities/marvel_series.dart';
import 'package:api_consumption/domain/entities/marvel_series_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'marvel_series_model.g.dart';
part 'marvel_series_model.mapper.dart';

@JsonSerializable(
  anyMap: true,
  explicitToJson: true,
)
class MarvelSeriesModel extends MarvelSeriesEntity {
  @JsonKey(name: 'items')
  final List<MarvelSeriesItemModel> itemsModel;

  MarvelSeriesModel({
    required int available,
    required int returned,
    required String collectionURI,
    required this.itemsModel,
  }) : super(
          available: available,
          returned: returned,
          collectionURI: collectionURI,
          items: itemsModel,
        );

  factory MarvelSeriesModel.fromJson(Map json) => _$MarvelSeriesModelFromJson(json);
  Map<String, dynamic> toJson() => _$MarvelSeriesModelToJson(this);

  factory MarvelSeriesModel.fromEntity(MarvelSeriesEntity entity) => _$MarvelSeriesModelFromEntity(entity);
  MarvelSeriesEntity toEntity() => _$MarvelSeriesModelToEntity(this);
}
