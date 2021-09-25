import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:startup_namer/screens/home_screen.dart';
import 'package:startup_namer/screens/table_screen.dart';
import 'package:startup_namer/screens/matches_screen.dart';
import 'package:startup_namer/screens/profile_screen.dart';
import 'package:startup_namer/screens/favorites_screen.dart';
import 'package:startup_namer/screens/random_words_screen.dart';
import 'package:startup_namer/screens/match_detalis_screen.dart';

import 'package:startup_namer/models/match.dart';
import 'package:startup_namer/models/table.dart' as custom_model;

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case TableScreen.routeName:
        custom_model.TablePosition table = settings.arguments as custom_model.TablePosition;
        return MaterialPageRoute(
            builder: (_) => TableScreen(table.leagueId, table.seasonId));
      case RandomWords.routeName:
        return MaterialPageRoute(builder: (_) => const RandomWords());
      case FavoriteList.routeName:
        Set<WordPair> saved = settings.arguments as Set<WordPair>;
        return MaterialPageRoute(builder: (_) => FavoriteList(saved));
      case MatchesScreen.routeName:
        return MaterialPageRoute(builder: (_) => const MatchesScreen());
      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case MatchDetailsScreen.routeName:
        Match match = settings.arguments as Match;
        return MaterialPageRoute(builder: (_) => MatchDetailsScreen(match));
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}

/*final Map<String, WidgetBuilder> routes = <String, WidgetBuilder> {
  HomeScreen.routeName: (context) => const HomeScreen(),
  RandomWords.routeName: (context) => const RandomWords(),
  FavoriteList.routeName: (context) => const FavoriteList(),
  MatchesScreen.routeName: (context) => const MatchesScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  MatchDetailsScreen.routeName: (context) => const MatchDetailsScreen()
};*/
