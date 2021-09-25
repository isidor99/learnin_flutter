import 'package:flutter/material.dart';
import 'package:startup_namer/models/table.dart';

class TableItem extends StatelessWidget {
  final int index;
  final TablePosition item;

  const TableItem(this.index, this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 32.0,
        width: MediaQuery.of(context).size.width - 2 * 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                flex: 5),
            Container(width: 1.0, color: Colors.grey[400]),
            Expanded(
                child: Text(
                  item.clubName,
                  textAlign: TextAlign.center,
                ),
                flex: 40),
            Container(width: 1.0, color: Colors.grey[400]),
            Expanded(
                child: Text(
                  "${item.goalsFor}",
                  textAlign: TextAlign.center,
                ),
                flex: 10),
            Container(width: 1.0, color: Colors.grey[400]),
            Expanded(
                child: Text(
                  "${item.goalsAgainst}",
                  textAlign: TextAlign.center,
                ),
                flex: 10),
            Container(width: 1.0, color: Colors.grey[400]),
            Expanded(
                child: Text(
                  "${item.getGoalDifference()}",
                  textAlign: TextAlign.center,
                ),
                flex: 10),
            Container(width: 1.0, color: Colors.grey[400]),
            Expanded(
                child: Text(
                  "${item.matchesWon}",
                  textAlign: TextAlign.center,
                ),
                flex: 10),
            Container(width: 1.0, color: Colors.grey[400]),
            Expanded(
                child: Text(
                  "${item.matchesDraw}",
                  textAlign: TextAlign.center,
                ),
                flex: 10),
            Container(width: 1.0, color: Colors.grey[400]),
            Expanded(
                child: Text(
                  "${item.matchesLost}",
                  textAlign: TextAlign.center,
                ),
                flex: 10),
            Container(width: 1.0, color: Colors.grey[400]),
            Expanded(
                child: Text(
                  "${item.points}",
                  textAlign: TextAlign.center,
                ),
                flex: 10)
          ],
        ));
  }
}
