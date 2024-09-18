part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

final class CharactersLoading extends CharactersState {
  final List<dynamic> characters;

  CharactersLoading({required this.characters});
}
