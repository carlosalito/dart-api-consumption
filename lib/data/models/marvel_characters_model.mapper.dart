part of 'marvel_characters_model.dart';

MarvelCharactersModel _$MarvelCharactersModelFromEntity(MarvelCharactersEntity entity) => MarvelCharactersModel(
      name: entity.name,
      id: entity.id,
      aboutModel: entity.about,
      seriesModel: MarvelSeriesModel.fromEntity(entity.series),
    );

MarvelCharactersEntity _$MarvelCharactersModelToEntity(MarvelCharactersModel model) => MarvelCharactersEntity(
      name: model.name,
      id: model.id,
      about: model.aboutModel,
      series: model.seriesModel.toEntity(),
    );
