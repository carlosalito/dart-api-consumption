part of 'marvel_series_item_model.dart';

MarvelSeriesItemModel _$MarvelSeriesItemModelFromEntity(MarvelSeriesItemEntity entity) => MarvelSeriesItemModel(
      name: entity.name,
      resourceURI: entity.resourceURI,
    );

MarvelSeriesItemEntity _$MarvelSeriesItemModelToEntity(MarvelSeriesItemModel model) => MarvelSeriesItemEntity(
      name: model.name,
      resourceURI: model.resourceURI,
    );
