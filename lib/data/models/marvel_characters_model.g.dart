// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_characters_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarvelCharactersModel _$MarvelCharactersModelFromJson(Map json) =>
    MarvelCharactersModel(
      name: json['name'] as String,
      id: json['id'] as int,
      aboutModel: json['description'] as String,
      seriesModel: MarvelSeriesModel.fromJson(json['series'] as Map),
    );

Map<String, dynamic> _$MarvelCharactersModelToJson(
        MarvelCharactersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.aboutModel,
      'series': instance.seriesModel.toJson(),
    };
