import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:startup_namer/models/match.dart';

class MatchDetailsHeader extends StatelessWidget {
  final Match match;

  const MatchDetailsHeader(this.match, {Key? key}) : super(key: key);

  TextStyle _getHeaderFont(double size) {
    return TextStyle(fontSize: size, fontWeight: FontWeight.bold);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Round ${match.round}", style: _getHeaderFont(16)),
          const SizedBox(
            height: 2.0,
          ),
          Text(match.getFormattedDate(), style: _getHeaderFont(16)),
          SizedBox(
            width: MediaQuery.of(context).size.width - 2 * 8,
            height: 64.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    match.homeTeamName,
                    style: _getHeaderFont(16),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    "${match.homeTeamGoals} : ${match.awayTeamGoals}",
                    style: _getHeaderFont(20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    match.awayTeamName,
                    style: _getHeaderFont(16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 2.0,
              width: MediaQuery.of(context).size.width - 2 * 8,
              color: Colors.deepOrange)
        ],
      ),
    );
  }
}
