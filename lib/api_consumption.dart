import 'package:api_consumption/data/data_source/marvel_characters_datasource.dart';
import 'package:api_consumption/di/injection.dart';

Future<void> main() async {
  try {
    DependenciesInjection.inject();
    final MarvelCharactersDS dataSource = getIt<MarvelCharactersDS>();
    final characters = await dataSource.fetch(page: 0);
    for (final character in characters) {
      print('NOME: ${character.name}\n');
      print('SOBRE: ${character.about}\n');
      print('SERIES:\n');

      for (final item in character.series.items) {
        print('${item.name}\n');
      }

      print('-------------------------------------------\n\n');
    }
  } catch (e) {
    print('Erro ao consultar api');
  }
}
