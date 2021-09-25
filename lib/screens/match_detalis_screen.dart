import 'package:flutter/material.dart';
import 'package:startup_namer/models/match.dart';
import 'package:startup_namer/widgets/match/match_details_header.dart';
import 'package:startup_namer/widgets/match/match_details_body.dart';

class MatchDetailsScreen extends StatefulWidget {
  final Match match;

  const MatchDetailsScreen(this.match, {Key? key}) : super(key: key);

  static const routeName = "/matchDetails";

  @override
  _MatchDetailsScreenState createState() => _MatchDetailsScreenState();
}

class _MatchDetailsScreenState extends State<MatchDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Match"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          MatchDetailsHeader(widget.match),
          MatchDetailsBody(widget.match)
        ]),
      ),
    );
  }
}
