import 'package:dio/dio.dart';
import 'package:startup_namer/models/table.dart';
import 'package:startup_namer/services/factory.dart';

class TableApi {
  static Future<List<TablePosition>> getTable(int leagueId, int seasonId) async {
    Dio dio = Factory.createDio();
    Response response = await dio.get("/table/$leagueId/$seasonId");

    return (response.data as List)
        .map((x) => TablePosition.fromJson(x))
        .toList();
  }
}