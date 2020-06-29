class DataClass {
  List<CasesTimeSeries> casesTimeSeries;
  List<Statewise> statewise;
  List<Tested> tested;

  DataClass({this.casesTimeSeries, this.statewise, this.tested});

  factory DataClass.fromJson(Map<String, dynamic> json) {
    return DataClass(
      casesTimeSeries: json['cases_time_series'] != null
          ? (json['cases_time_series'] as List)
              .map((i) => CasesTimeSeries.fromJson(i))
              .toList()
          : null,
      statewise: json['statewise'] != null
          ? (json['statewise'] as List)
              .map((i) => Statewise.fromJson(i))
              .toList()
          : null,
      tested: json['tested'] != null
          ? (json['tested'] as List).map((i) => Tested.fromJson(i)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.casesTimeSeries != null) {
      data['cases_time_series'] =
          this.casesTimeSeries.map((v) => v.toJson()).toList();
    }
    if (this.statewise != null) {
      data['statewise'] = this.statewise.map((v) => v.toJson()).toList();
    }
    if (this.tested != null) {
      data['tested'] = this.tested.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Statewise {
  String active;
  String confirmed;
  String deaths;
  String deltaconfirmed;
  String deltadeaths;
  String deltarecovered;
  String lastupdatedtime;
  String migratedother;
  String recovered;
  String state;
  String statecode;
  String statenotes;

  Statewise(
      {this.active,
      this.confirmed,
      this.deaths,
      this.deltaconfirmed,
      this.deltadeaths,
      this.deltarecovered,
      this.lastupdatedtime,
      this.migratedother,
      this.recovered,
      this.state,
      this.statecode,
      this.statenotes});

  factory Statewise.fromJson(Map<String, dynamic> json) {
    return Statewise(
      active: json['active'],
      confirmed: json['confirmed'],
      deaths: json['deaths'],
      deltaconfirmed: json['deltaconfirmed'],
      deltadeaths: json['deltadeaths'],
      deltarecovered: json['deltarecovered'],
      lastupdatedtime: json['lastupdatedtime'],
      migratedother: json['migratedother'],
      recovered: json['recovered'],
      state: json['state'],
      statecode: json['statecode'],
      statenotes: json['statenotes'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['active'] = this.active;
    data['confirmed'] = this.confirmed;
    data['deaths'] = this.deaths;
    data['deltaconfirmed'] = this.deltaconfirmed;
    data['deltadeaths'] = this.deltadeaths;
    data['deltarecovered'] = this.deltarecovered;
    data['lastupdatedtime'] = this.lastupdatedtime;
    data['migratedother'] = this.migratedother;
    data['recovered'] = this.recovered;
    data['state'] = this.state;
    data['statecode'] = this.statecode;
    data['statenotes'] = this.statenotes;
    return data;
  }
}

class CasesTimeSeries {
  String dailyconfirmed;
  String dailydeceased;
  String dailyrecovered;
  String date;
  String totalconfirmed;
  String totaldeceased;
  String totalrecovered;

  CasesTimeSeries(
      {this.dailyconfirmed,
      this.dailydeceased,
      this.dailyrecovered,
      this.date,
      this.totalconfirmed,
      this.totaldeceased,
      this.totalrecovered});

  factory CasesTimeSeries.fromJson(Map<String, dynamic> json) {
    return CasesTimeSeries(
      dailyconfirmed: json['dailyconfirmed'],
      dailydeceased: json['dailydeceased'],
      dailyrecovered: json['dailyrecovered'],
      date: json['date'],
      totalconfirmed: json['totalconfirmed'],
      totaldeceased: json['totaldeceased'],
      totalrecovered: json['totalrecovered'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dailyconfirmed'] = this.dailyconfirmed;
    data['dailydeceased'] = this.dailydeceased;
    data['dailyrecovered'] = this.dailyrecovered;
    data['date'] = this.date;
    data['totalconfirmed'] = this.totalconfirmed;
    data['totaldeceased'] = this.totaldeceased;
    data['totalrecovered'] = this.totalrecovered;
    return data;
  }
}

class Tested {
  String individualstestedperconfirmedcase;
  String positivecasesfromsamplesreported;
  String samplereportedtoday;
  String source;
  String source1;
  String testedasof;
  String testpositivityrate;
  String testsconductedbyprivatelabs;
  String testsperconfirmedcase;
  String testspermillion;
  String totalindividualstested;
  String totalpositivecases;
  String totalsamplestested;
  String updatetimestamp;

  Tested(
      {this.individualstestedperconfirmedcase,
      this.positivecasesfromsamplesreported,
      this.samplereportedtoday,
      this.source,
      this.source1,
      this.testedasof,
      this.testpositivityrate,
      this.testsconductedbyprivatelabs,
      this.testsperconfirmedcase,
      this.testspermillion,
      this.totalindividualstested,
      this.totalpositivecases,
      this.totalsamplestested,
      this.updatetimestamp});

  factory Tested.fromJson(Map<String, dynamic> json) {
    return Tested(
      individualstestedperconfirmedcase:
          json['individualstestedperconfirmedcase'],
      positivecasesfromsamplesreported:
          json['positivecasesfromsamplesreported'],
      samplereportedtoday: json['samplereportedtoday'],
      source: json['source'],
      source1: json['source1'],
      testedasof: json['testedasof'],
      testpositivityrate: json['testpositivityrate'],
      testsconductedbyprivatelabs: json['testsconductedbyprivatelabs'],
      testsperconfirmedcase: json['testsperconfirmedcase'],
      testspermillion: json['testspermillion'],
      totalindividualstested: json['totalindividualstested'],
      totalpositivecases: json['totalpositivecases'],
      totalsamplestested: json['totalsamplestested'],
      updatetimestamp: json['updatetimestamp'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['individualstestedperconfirmedcase'] =
        this.individualstestedperconfirmedcase;
    data['positivecasesfromsamplesreported'] =
        this.positivecasesfromsamplesreported;
    data['samplereportedtoday'] = this.samplereportedtoday;
    data['source'] = this.source;
    data['source1'] = this.source1;
    data['testedasof'] = this.testedasof;
    data['testpositivityrate'] = this.testpositivityrate;
    data['testsconductedbyprivatelabs'] = this.testsconductedbyprivatelabs;
    data['testsperconfirmedcase'] = this.testsperconfirmedcase;
    data['testspermillion'] = this.testspermillion;
    data['totalindividualstested'] = this.totalindividualstested;
    data['totalpositivecases'] = this.totalpositivecases;
    data['totalsamplestested'] = this.totalsamplestested;
    data['updatetimestamp'] = this.updatetimestamp;
    return data;
  }
}
