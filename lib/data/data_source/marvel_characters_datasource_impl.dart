import 'dart:convert';

import 'package:api_consumption/data/data_source/marvel_characters_datasource.dart';
import 'package:api_consumption/data/models/marvel_characters_model.dart';
import 'package:api_consumption/domain/entities/marvel_characters.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';

class MarvelCharactersDSImpl implements MarvelCharactersDS {
  @override
  Future<List<MarvelCharactersEntity>> fetch({required int page}) async {
    try {
      const int limit = 20;
      final int offSet = limit * page;
      const String publicKey = String.fromEnvironment('DEFINE_PUBLIC_KEY');
      const String privateKey = String.fromEnvironment('DEFINE_PRIVATE_KEY');
      final int timeStamp = DateTime.now().microsecondsSinceEpoch;
      final hash = md5.convert(utf8.encode('$timeStamp$privateKey$publicKey')).toString();
      final url =
          'http://gateway.marvel.com/v1/public/characters?ts=$timeStamp&apikey=$publicKey&hash=$hash&offset=$offSet&limit=$limit';

      final response = await Dio().get(url);
      final List<dynamic> list = response.data['data']['results'];
      final result = list.map((dynamic e) => MarvelCharactersModel.fromJson(e).toEntity()).toList();
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
