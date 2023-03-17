import 'package:api_consumption/data/models/marvel_series_model.dart';
import 'package:api_consumption/domain/entities/marvel_characters.dart';
import 'package:api_consumption/domain/entities/marvel_series.dart';
import 'package:json_annotation/json_annotation.dart';

part 'marvel_characters_model.g.dart';
part 'marvel_characters_model.mapper.dart';

@JsonSerializable(
  anyMap: true,
  explicitToJson: true,
)
class MarvelCharactersModel extends MarvelCharactersEntity {
  @JsonKey(name: 'description')
  final String aboutModel;

  @JsonKey(name: 'series')
  final MarvelSeriesModel seriesModel;

  MarvelCharactersModel({
    required String name,
    required int id,
    required this.aboutModel,
    required this.seriesModel,
  }) : super(
          name: name,
          id: id,
          about: aboutModel,
          series: seriesModel,
        );

  factory MarvelCharactersModel.fromJson(Map json) => _$MarvelCharactersModelFromJson(json);
  Map<String, dynamic> toJson() => _$MarvelCharactersModelToJson(this);

  factory MarvelCharactersModel.fromEntity(MarvelCharactersEntity entity) => _$MarvelCharactersModelFromEntity(entity);
  MarvelCharactersEntity toEntity() => _$MarvelCharactersModelToEntity(this);
}
