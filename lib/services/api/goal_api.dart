import 'package:dio/dio.dart';
import 'package:startup_namer/services/factory.dart';
import 'package:startup_namer/models/goal.dart';

class GoalApi {
  static Future<List<Goal>> getGoals(int matchId) async {
    Dio dio = Factory.createDio();
    Response response = await dio.get("/goals/all/$matchId");

    return (response.data as List)
        .map((x) => Goal.fromJson(x))
        .toList();
  }
}