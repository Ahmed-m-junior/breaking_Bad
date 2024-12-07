import 'package:breaking_bad/data/models/characters.dart';
import 'package:breaking_bad/data/web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<CharacterModel> getAllCharacters() async{
    final characters = await charactersWebServices.getAllCharacters();
    return  CharacterModel.fromJson(characters);
  }
}