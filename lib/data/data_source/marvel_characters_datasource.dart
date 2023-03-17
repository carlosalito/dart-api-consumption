import 'package:api_consumption/domain/entities/marvel_characters.dart';

abstract class MarvelCharactersDS {
  Future<List<MarvelCharactersEntity>> fetch({required int page});
}
