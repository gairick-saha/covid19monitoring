// To parse this JSON data, do
//
//     final dataModelClass = dataModelClassFromJson(jsonString);

import 'dart:convert';

DataModelClass dataModelClassFromJson(String str) =>
    DataModelClass.fromJson(json.decode(str));

String dataModelClassToJson(DataModelClass data) => json.encode(data.toJson());

class DataModelClass {
  DataModelClass({
    this.casesTimeSeries,
    this.statewise,
    this.tested,
  });

  List<CasesTimeSery> casesTimeSeries;
  List<Statewise> statewise;
  List<Tested> tested;

  factory DataModelClass.fromJson(Map<String, dynamic> json) => DataModelClass(
        casesTimeSeries: List<CasesTimeSery>.from(
            json["cases_time_series"].map((x) => CasesTimeSery.fromJson(x))),
        statewise: List<Statewise>.from(
            json["statewise"].map((x) => Statewise.fromJson(x))),
        tested:
            List<Tested>.from(json["tested"].map((x) => Tested.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cases_time_series":
            List<dynamic>.from(casesTimeSeries.map((x) => x.toJson())),
        "statewise": List<dynamic>.from(statewise.map((x) => x.toJson())),
        "tested": List<dynamic>.from(tested.map((x) => x.toJson())),
      };
}

class CasesTimeSery {
  CasesTimeSery({
    this.dailyconfirmed,
    this.dailydeceased,
    this.dailyrecovered,
    this.date,
    this.totalconfirmed,
    this.totaldeceased,
    this.totalrecovered,
  });

  String dailyconfirmed;
  String dailydeceased;
  String dailyrecovered;
  String date;
  String totalconfirmed;
  String totaldeceased;
  String totalrecovered;

  factory CasesTimeSery.fromJson(Map<String, dynamic> json) => CasesTimeSery(
        dailyconfirmed: json["dailyconfirmed"],
        dailydeceased: json["dailydeceased"],
        dailyrecovered: json["dailyrecovered"],
        date: json["date"],
        totalconfirmed: json["totalconfirmed"],
        totaldeceased: json["totaldeceased"],
        totalrecovered: json["totalrecovered"],
      );

  Map<String, dynamic> toJson() => {
        "dailyconfirmed": dailyconfirmed,
        "dailydeceased": dailydeceased,
        "dailyrecovered": dailyrecovered,
        "date": date,
        "totalconfirmed": totalconfirmed,
        "totaldeceased": totaldeceased,
        "totalrecovered": totalrecovered,
      };
}

class Statewise {
  Statewise({
    this.active,
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
    this.statenotes,
  });

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

  factory Statewise.fromJson(Map<String, dynamic> json) => Statewise(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
      };
}

class Tested {
  Tested({
    this.individualstestedperconfirmedcase,
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
    this.updatetimestamp,
  });

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

  factory Tested.fromJson(Map<String, dynamic> json) => Tested(
        individualstestedperconfirmedcase:
            json["individualstestedperconfirmedcase"],
        positivecasesfromsamplesreported:
            json["positivecasesfromsamplesreported"],
        samplereportedtoday: json["samplereportedtoday"],
        source: json["source"],
        source1: json["source1"],
        testedasof: json["testedasof"],
        testpositivityrate: json["testpositivityrate"],
        testsconductedbyprivatelabs: json["testsconductedbyprivatelabs"],
        testsperconfirmedcase: json["testsperconfirmedcase"],
        testspermillion: json["testspermillion"],
        totalindividualstested: json["totalindividualstested"],
        totalpositivecases: json["totalpositivecases"],
        totalsamplestested: json["totalsamplestested"],
        updatetimestamp: json["updatetimestamp"],
      );

  Map<String, dynamic> toJson() => {
        "individualstestedperconfirmedcase": individualstestedperconfirmedcase,
        "positivecasesfromsamplesreported": positivecasesfromsamplesreported,
        "samplereportedtoday": samplereportedtoday,
        "source": source,
        "source1": source1,
        "testedasof": testedasof,
        "testpositivityrate": testpositivityrate,
        "testsconductedbyprivatelabs": testsconductedbyprivatelabs,
        "testsperconfirmedcase": testsperconfirmedcase,
        "testspermillion": testspermillion,
        "totalindividualstested": totalindividualstested,
        "totalpositivecases": totalpositivecases,
        "totalsamplestested": totalsamplestested,
        "updatetimestamp": updatetimestamp,
      };
}
