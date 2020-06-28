import 'package:http/http.dart';

class ApiServices {
  final String baseUrl = 'https://api.covid19india.org/data.json';

  Client client = Client();
}