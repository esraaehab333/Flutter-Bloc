import 'package:breaking_bad/business_logic/cubit/characters_cubit.dart';
import 'package:breaking_bad/conistans/strings.dart';
import 'package:breaking_bad/data/repository/character_repository.dart';
import 'package:breaking_bad/data/web_service/characters_web_services.dart';
import 'package:breaking_bad/presentation/screens/characters_details.dart';
import 'package:breaking_bad/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharacterRepository characterRepository;
  late CharactersCubit charactersCubit;
  AppRouter() {
    characterRepository =
        CharacterRepository(charactersWebServices: CharactersWebServices());
    charactersCubit = CharactersCubit(characterRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => charactersCubit,
            child: const CharactersScreen(),
          ),
        );
      case charactersDetails:
        return MaterialPageRoute(builder: (_) => const CharactersDetails());
    }
    return null;
  }
}
