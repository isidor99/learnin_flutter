import 'package:flutter/material.dart';
import 'package:startup_namer/models/match.dart';
import 'package:startup_namer/screens/match_detalis_screen.dart';

class MatchItem extends StatelessWidget {

  final Match match;

  const MatchItem(this.match, {Key? key}) : super(key: key);

  TextStyle _teamNameStyle() {
    return const TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.bold, letterSpacing: 2);
  }

  void _openMatchDetailsScreen(BuildContext context) {
    Navigator.pushNamed(context, MatchDetailsScreen.routeName,
        arguments: match);
  }

  @override
  Widget build(BuildContext context) {
      return InkWell(
        onTap: () => _openMatchDetailsScreen(context),
        child: Column(
          children: [
            const SizedBox(
              height: 16.0,
            ),
            Center(child: Text(match.getFormattedDate())),
            const SizedBox(height: 4.0),
            Center(child: Text("Round: ${match.round}")),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(match.homeTeamName, style: _teamNameStyle()),
                Text(match.homeTeamGoals.toString(), style: _teamNameStyle())
              ],
            ),
            const SizedBox(
              height: 4.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(match.awayTeamName, style: _teamNameStyle()),
                Text(match.awayTeamGoals.toString(), style: _teamNameStyle())
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      );
    }
}
