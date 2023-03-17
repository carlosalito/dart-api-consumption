// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_series_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarvelSeriesModel _$MarvelSeriesModelFromJson(Map json) => MarvelSeriesModel(
      available: json['available'] as int,
      returned: json['returned'] as int,
      collectionURI: json['collectionURI'] as String,
      itemsModel: (json['items'] as List<dynamic>)
          .map((e) => MarvelSeriesItemModel.fromJson(e as Map))
          .toList(),
    );

Map<String, dynamic> _$MarvelSeriesModelToJson(MarvelSeriesModel instance) =>
    <String, dynamic>{
      'available': instance.available,
      'returned': instance.returned,
      'collectionURI': instance.collectionURI,
      'items': instance.itemsModel.map((e) => e.toJson()).toList(),
    };
