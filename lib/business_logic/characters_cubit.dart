import 'package:bloc/bloc.dart';
import 'package:breaking_bad/data/models/characters.dart';
import 'package:breaking_bad/data/repository/characters_repository.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  //  late CharacterModel characters;
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

   getAllCharacters() {
    charactersRepository.getAllCharacters().then((characters) {
          emit(CharactersLoaded(characters));
          // this.characters = characters,
       // });
    //return characters;
  });
}
}
