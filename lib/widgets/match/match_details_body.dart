import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:startup_namer/models/goal.dart';
import 'package:startup_namer/models/match.dart';
import 'package:startup_namer/services/api/goal_api.dart';

class MatchDetailsBody extends StatefulWidget {
  final Match match;

  const MatchDetailsBody(this.match, {Key? key}) : super(key: key);

  @override
  _MatchDetailsBodyState createState() => _MatchDetailsBodyState();
}

class _MatchDetailsBodyState extends State<MatchDetailsBody> {
  List<Goal>? goals;

  void getGoals() async {
    List<Goal> g = await GoalApi.getGoals(widget.match.id);
    setState(() {
      goals = g;
    });
  }

  TextStyle _minutesStyle() {
    return const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  }

  TextStyle _playerNameStyle() {
    return TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey[600]);
  }

  Widget _buildLoadingText() {
    return const Center(child: Text("Loading..."));
  }

  Widget _buildGoalItem(Goal goal) {
    if (goal.clubId == widget.match.homeTeamId) {
      // home team goal
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Text("${goal.minute}'", style: _minutesStyle()),
            const SizedBox(width: 8.0),
            Text("${goal.footballerName[0]}.${goal.footballerSurname}",
                style: _playerNameStyle()),
            goal.isOwnGoal
                ? Text("(Own Goal)", style: _playerNameStyle())
                : const SizedBox(
                    width: 1.0,
                  )
          ],
        ),
      );
    } else {
      // away team goal
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            goal.isOwnGoal
                ? Text("(Own Goal)", style: _playerNameStyle())
                : const SizedBox(
                    width: 1.0,
                  ),
            Text("${goal.footballerName[0]}.${goal.footballerSurname}",
                style: _playerNameStyle()),
            const SizedBox(width: 8.0),
            Text("${goal.minute}'", style: _minutesStyle()),
          ],
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    getGoals();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: goals == null
              ? _buildLoadingText()
              : ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      _buildGoalItem(goals![index]),
                  itemCount: goals!.length,
                )),
    );
  }
}
