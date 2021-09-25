import 'package:flutter/material.dart';
import 'package:startup_namer/models/table.dart';
import 'package:startup_namer/services/api/table_api.dart';
import 'package:startup_namer/widgets/table/table_header.dart';
import 'package:startup_namer/widgets/table/table_item.dart';

class TableScreen extends StatefulWidget {
  final int leagueId;
  final int seasonId;

  const TableScreen(this.leagueId, this.seasonId, {Key? key}) : super(key: key);

  static const routeName = "/table";

  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  List<TablePosition>? table;

  void getTableData() async {
    List<TablePosition> t =
        await TableApi.getTable(widget.leagueId, widget.seasonId);
    setState(() {
      table = t;
    });
  }

  Widget _buildTable() {
    return Column(
      children: [
        const TableHeader(),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => TableItem(index, table![index]),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: table!.length),
        ),
      ],
    );
  }

  Widget _buildLoading() {
    return const Center(child: Text("Loading..."));
  }

  @override
  void initState() {
    super.initState();
    getTableData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Table"),
        ),
        body: table != null ? _buildTable() : _buildLoading());
  }
}
