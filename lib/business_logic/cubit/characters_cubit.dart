import 'package:bloc/bloc.dart';
import 'package:breaking_bad/data/models/characters.dart';
import 'package:breaking_bad/data/repository/character_repository.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharacterRepository characterRepository;
  late List<Charcter> mycharacters;

  CharactersCubit(this.characterRepository) : super(CharactersInitial());
  List<Charcter> getAllCharacters() {
    characterRepository.getAllCharacters().then((character) {
      emit(
        CharactersLoading(characters: character),
      );
    });
    return mycharacters;  
  }
}
