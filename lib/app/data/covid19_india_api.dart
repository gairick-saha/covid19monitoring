import 'package:covid19monitor/app/models/covid19_india_response.dart';
import 'package:get/get_connect.dart';

class Covid19IndiaApi extends GetConnect {
  Future<Covid19IndiaResponse> getCity() async =>
      await get('https://api.covid19india.org/data.json').then(
        (_response) {
          return Covid19IndiaResponse.fromJson(_response.body);
        },
      );
}
