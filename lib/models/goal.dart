
class Goal {
 late int goalId;
 late int personId;
 late int matchId;
 late int clubId;
 late String footballerName;
 late String footballerSurname;
 late String clubName;
 late bool isOwnGoal;
 late int minute;

  Goal.fromJson(Map<String, dynamic> json) {
    goalId = json['idGol'];
    personId = json['idOsoba'];
    matchId = json['idUtakmica'];
    clubId = json['idKlub'];
    footballerName = json['ime_fudbalera'];
    footballerSurname = json['prezime_fudbalera'];
    clubName = json['klub'];
    isOwnGoal = json['autogol'] == 1;
    minute = json['minuta'];
  }

  Map<String, dynamic> toJson() {

    final Map<String, dynamic> data = <String, dynamic>{};

    data['idGol'] = goalId;
    data['idOsoba'] = personId;
    data['idUtakmica'] = matchId;
    data['idKlub'] = clubId;
    data['ime_fudbalera'] = footballerName;
    data['prezime_fudbalera'] = footballerSurname;
    data['klub'] = clubName;
    data['autogol'] = isOwnGoal;
    data['minuta'] = minute;

    return data;
  }
}