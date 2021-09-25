import 'package:dio/dio.dart';
import 'package:startup_namer/services/factory.dart';
import 'package:startup_namer/models/match.dart';

class MatchApi {
  static Future<List<Match>> getMatches(int leagueId, int seasonId) async {
    Dio dio = Factory.createDio();
    Response response = await dio.get("/matches/all/$leagueId/$seasonId");

    return (response.data as List)
        .map((x) => Match.fromJson(x))
        .toList();
  }
}
