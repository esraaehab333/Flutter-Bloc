import 'package:breaking_bad/data/models/characters.dart';
import 'package:breaking_bad/data/web_service/characters_web_services.dart';

class CharacterRepository {
  final CharactersWebServices charactersWebServices;

  CharacterRepository({required this.charactersWebServices});

  Future<List<dynamic>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters.map((character) => Charcter.fromjson(character)).toList();
  }
}
