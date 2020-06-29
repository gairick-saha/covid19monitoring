import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:covid19tracker/core/models/dataClass.dart';
import 'package:flutter/foundation.dart';

class DataProvider extends ChangeNotifier {
  final String url = 'https://api.covid19india.org/data.json';
  bool isLoading = true;
  DataClass _dataClass = new DataClass();
  List<CasesTimeSeries> casesTimeSeries = new List();
  List<Statewise> statewise = new List();
  List<Tested> tested = new List();

  DataProvider() {
    _dataClass.casesTimeSeries = casesTimeSeries;
    _dataClass.statewise = statewise;
    _dataClass.tested = tested;
  }

  setData(DataClass value) {
    _dataClass = value;
    isLoading = false;
    notifyListeners();
  }

  DataClass getData() {
    return _dataClass;
  }

  Future hitApi() async {
    try {
      final response = await http.get(url);
      final Map parsed = json.decode(response.body);
      DataClass dataClass = DataClass.fromJson(parsed);
      return dataClass;
    } catch (e) {
      return _dataClass;
    }
  }
}
