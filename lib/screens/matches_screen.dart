import 'package:flutter/material.dart';
import 'package:startup_namer/models/match.dart';
import 'package:startup_namer/screens/table_screen.dart';
import 'package:startup_namer/services/api/match_api.dart';
import 'package:startup_namer/widgets/match/match_item.dart';
import 'package:startup_namer/models/table.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  static const routeName = "/matches";

  @override
  _MatchesScreenState createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  List<Match>? matches;

  void getMatches() async {
    List<Match> m = await MatchApi.getMatches(1, 1);
    setState(() {
      matches = m;
    });
  }

  Widget _buildLoading() {
    return const Center(child: Text("Loading..."));
  }

  Widget _buildMatchesList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.separated(
        itemBuilder: (context, index) => MatchItem(matches![index]),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: matches != null ? matches!.length : 0,
      ),
    );
  }

  void _onTablePress() {
    TablePosition table = TablePosition();
    table.leagueId = matches![0].leagueId;
    table.seasonId = matches![0].seasonId;

    Navigator.pushNamed(context, TableScreen.routeName, arguments: table);
  }

  Widget _createTableIcon() {
    if (matches != null && matches!.isNotEmpty) {
      return IconButton(
          onPressed: _onTablePress, icon: const Icon(Icons.table_rows_rounded));
    }

    return const SizedBox.shrink();
  }

  @override
  void initState() {
    super.initState();
    getMatches();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Matches"),
          actions: [
            _createTableIcon(),
          ],
        ),
        body: matches == null ? _buildLoading() : _buildMatchesList());
  }
}
