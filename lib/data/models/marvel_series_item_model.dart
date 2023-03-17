import 'package:api_consumption/domain/entities/marvel_series_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'marvel_series_item_model.g.dart';
part 'marvel_series_item_model.mapper.dart';

@JsonSerializable(
  anyMap: true,
)
class MarvelSeriesItemModel extends MarvelSeriesItemEntity {
  MarvelSeriesItemModel({
    required String name,
    required String resourceURI,
  }) : super(
          name: name,
          resourceURI: resourceURI,
        );

  factory MarvelSeriesItemModel.fromJson(Map json) => _$MarvelSeriesItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$MarvelSeriesItemModelToJson(this);

  factory MarvelSeriesItemModel.fromEntity(MarvelSeriesItemEntity entity) => _$MarvelSeriesItemModelFromEntity(entity);
  MarvelSeriesItemEntity toEntity() => _$MarvelSeriesItemModelToEntity(this);
}
