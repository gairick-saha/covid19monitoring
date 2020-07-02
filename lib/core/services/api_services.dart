import 'package:covid19tracker/core/models/dataListClass.dart';
import 'package:http/http.dart' as http;

class HitApi {
  final String url = 'https://api.covid19india.org/data.json';

  Future getData() async {
    final response = await http.get(url);
    DataListClass dataListClass = dataListClassFromJson(response.body);
    return dataListClass;
  }
}

// Map<String, dynamic> map = json.decode(response.body);
//   timeSeriesData = map['cases_time_series'];
//   stateData = map['statewise'];
//   testData = map['tested'];
//   print(timeSeriesData.last);
//   print(timeSeriesData.last['date']);
//   print(timeSeriesData.last['totalconfirmed']);
//   print(timeSeriesData.last['totalrecovered']);
//   print(timeSeriesData.last['totaldeceased']);
//   return ({timeSeriesData, stateData, testData});
