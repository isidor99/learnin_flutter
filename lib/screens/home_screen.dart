import 'package:flutter/material.dart';

import 'package:startup_namer/screens/profile_screen.dart';
import 'package:startup_namer/screens/random_words_screen.dart';
import 'package:startup_namer/screens/matches_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "/";

  void _onRandomNamesButtonPressed(context) {
    Navigator.pushNamed(context, RandomWords.routeName);
  }

  void _onProfileScreenButtonPressed(context) {
    Navigator.pushNamed(context, ProfileScreen.routeName);
  }

  void _onMatchesScreenButtonPressed(context) {
    Navigator.pushNamed(context, MatchesScreen.routeName);
  }

  Widget _buildHomeBody(context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  child: OutlinedButton(
                      onPressed: () => _onRandomNamesButtonPressed(context),
                      child: const Text("Random names"),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 16.0),
                      )),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  child: OutlinedButton(
                      onPressed: () => _onProfileScreenButtonPressed(context),
                      child: const Text("Profile Screen"),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 16.0),
                      )),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  child: OutlinedButton(
                      onPressed: () => _onMatchesScreenButtonPressed(context),
                      child: const Text("Matches Screen"),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 16.0),
                      )),
                ))
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
        ),
        body: _buildHomeBody(context));
  }
}
