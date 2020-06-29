import 'dart:convert';
import 'package:covid19tracker/core/models/dataClass.dart';
import 'package:http/http.dart' as http;

class HitApi {
  static String url = 'https://api.covid19india.org/data.json';

  static Future<DataClass> getData() async {
    try {
      final response = await http.get(url);
      final result = json.decode(response.body);
      // final Map parsed = json.decode(response.body);
      // DataClass dataClass = DataClass.fromJson(parsed);
      // DataModelClass dataModelClass = dataModelClassFromJson(response.body);

      return result;
    } catch (e) {
      return DataClass();
    }
  }
}
