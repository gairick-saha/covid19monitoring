import 'dart:convert';
import 'package:covid19tracker/core/models/dataClass.dart';
import 'package:http/http.dart' as http;

class HitApi {
  static String url = 'https://api.covid19india.org/data.json';

  static Future<DataClass> getData() async {
    try {
      final response = await http.get(url);
      // print(json.decode(response.body));
      final Map parsed = json.decode(response.body);
      // DataClass dataClass = DataClass.fromJson(parsed);
      print(parsed);

      // return dataClass;
    } catch (e) {
      return DataClass();
    }
  }
}
