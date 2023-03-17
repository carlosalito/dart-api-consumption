part of 'marvel_series_model.dart';

MarvelSeriesModel _$MarvelSeriesModelFromEntity(MarvelSeriesEntity entity) => MarvelSeriesModel(
      available: entity.available,
      returned: entity.returned,
      collectionURI: entity.collectionURI,
      itemsModel: entity.items.map((MarvelSeriesItemEntity entry) => MarvelSeriesItemModel.fromEntity(entry)).toList(),
    );

MarvelSeriesEntity _$MarvelSeriesModelToEntity(MarvelSeriesModel model) => MarvelSeriesEntity(
      available: model.available,
      returned: model.returned,
      collectionURI: model.collectionURI,
      items: model.itemsModel.map((MarvelSeriesItemModel entry) => entry.toEntity()).toList(),
    );
