import 'package:breaking_bad/conistans/strings.dart';
import 'package:breaking_bad/presentation/screens/characters_details.dart';
import 'package:breaking_bad/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
      case charactersDetails:
        return MaterialPageRoute(builder: (_) => const CharactersDetails());
    }
  }
}
