import 'package:api_consumption/data/data_source/marvel_characters_datasource.dart';
import 'package:api_consumption/data/data_source/marvel_characters_datasource_impl.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

class DependenciesInjection {
  static void inject() {
    if (!getIt.isRegistered<MarvelCharactersDS>()) {
      getIt.registerFactory<MarvelCharactersDS>(() => MarvelCharactersDSImpl());
    }
  }
}
