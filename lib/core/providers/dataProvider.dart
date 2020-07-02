import 'package:covid19tracker/core/models/dataListClass.dart';
import 'package:flutter/foundation.dart';

class DataProvider extends ChangeNotifier {
  final String url = 'https://api.covid19india.org/data.json';
  bool isLoading = true;
  DataListClass _dataListClass = DataListClass();
  List<TimeSeries> _timeSeries = List();
  List<Statewise> _statewise = List();
  List<Tested> _tested = List();

  DataProvider() {
    _dataListClass.casesTimeSeries = _timeSeries;
    _dataListClass.statewise = _statewise;
    _dataListClass.tested = _tested;
  }

  setData(DataListClass values) {
    _dataListClass = values;
    isLoading = false;
    notifyListeners();
  }

  DataListClass getData() {
    return _dataListClass;
  }

  // Future hitApi() async {
  //   try {
  //     final response = await http.get(url);
  //     final Map parsed = json.decode(response.body);
  //     DataClass dataClass = DataClass.fromJson(parsed);
  //     return dataClass;
  //   } catch (e) {
  //     return _dataClass;
  //   }
  // }
}
