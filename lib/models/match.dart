import 'package:intl/intl.dart';

class Match {
  late int id;
  late int leagueId;
  late int seasonId;
  late int homeTeamId;
  late int awayTeamId;
  late String datetime;
  late int round;
  late String homeTeamName;
  late int homeTeamGoals;
  late String awayTeamName;
  late int awayTeamGoals;
  late String leagueName;
  late String seasonName;

  Match.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    leagueId = json['idLiga'];
    seasonId = json['idSezona'];
    homeTeamId = json['idDomaci'];
    awayTeamId = json['idGosti'];
    datetime = json['datumVrijeme'];
    round = json['kolo'];
    homeTeamName = json['domaci'];
    homeTeamGoals = json['golova_domaci'];
    awayTeamName = json['gosti'];
    awayTeamGoals = json['golova_gosti'];
    leagueName = json['liga'];
    seasonName = json['sezona'];
  }

  Map<String, dynamic> toJson() {

    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['idLiga'] = leagueId;
    data['idSezona'] = seasonId;
    data['idDomaci'] = homeTeamId;
    data['idGosti'] = awayTeamId;
    data['datumVrijeme'] = datetime;
    data['kolo'] = round;
    data['domaci'] = homeTeamName;
    data['golova_domaci'] = homeTeamGoals;
    data['gosti'] = awayTeamName;
    data['golova_gosti'] = awayTeamGoals;
    data['liga'] = leagueName;
    data['sezona'] = seasonName;

    return data;
  }

  String getFormattedDate() {
    final DateFormat formatter = DateFormat('HH:mm   dd.MM.yy');
    final String dateString = formatter.format(DateTime.parse(datetime));

    return dateString;
  }
}