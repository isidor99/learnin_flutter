class TablePosition {

  late int leagueId;
  late int seasonId;
  late int clubId;
  late String clubName;
  late int goalsFor;
  late int goalsAgainst;
  late int matchesWon;
  late int matchesLost;
  late int matchesDraw;
  late int points;

  TablePosition();

  TablePosition.fromJson(Map<String, dynamic> json) {
    leagueId = json['idLiga'];
    seasonId = json['idSezona'];
    clubId = json['idKlub'];
    clubName = json['klub'];
    goalsFor = json['brojPostignutihGolova'];
    goalsAgainst = json['brojPrimljenihGolova'];
    matchesWon = json['brojPobjeda'];
    matchesLost = json['brojPoraza'];
    matchesDraw = json['brojRemija'];
    points = json['brojBodova'];
  }

  Map<String, dynamic> toJson() {

    final Map<String, dynamic> data = <String, dynamic>{};

    data['idLiga'] = leagueId;
    data['idSezona'] = seasonId;
    data['idKlub'] = clubId;
    data['klub'] = clubName;
    data['brojPostignutihGolova'] = goalsFor;
    data['brojPrimljenihGolova'] = goalsAgainst;
    data['brojPobjeda'] = matchesWon;
    data['brojPoraza'] = matchesLost;
    data['brojRemija'] = matchesDraw;
    data['brojBodova'] = points;

    return data;
  }

  int getGoalDifference() => goalsFor - goalsAgainst;
}