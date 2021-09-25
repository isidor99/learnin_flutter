import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          height: 16.0,
          width: MediaQuery.of(context).size.width - 2 * 8,
          child: Row(
            children: const [
              Expanded(
                  child: Text(
                    "#",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  flex: 5),
              Expanded(
                  child: Text(
                    "Club Name",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  flex: 40),
              Expanded(
                  child: Text(
                    "GF",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  flex: 10),
              Expanded(
                  child: Text(
                    "GA",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  flex: 10),
              Expanded(
                  child: Text("GD",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  flex: 10),
              Expanded(
                  child: Text("W",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  flex: 10),
              Expanded(
                  child: Text("D",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  flex: 10),
              Expanded(
                  child: Text("L",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  flex: 10),
              Expanded(
                  child: Text("P",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  flex: 10)
            ],
          )),
    );
  }
}
