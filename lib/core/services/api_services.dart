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
