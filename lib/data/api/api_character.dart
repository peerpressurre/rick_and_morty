import 'package:rick_and_morty/domain/character.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServise {
  Future<List<Character>> fetchAllCharacter() async {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      var characterJson = jsonDecode(response.body)['results'] as List<dynamic>;
      return characterJson.map((c) => Character.fromJson(c)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
