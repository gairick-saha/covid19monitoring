import 'package:covid19monitor/app/data/covid19_india_api.dart';
import 'package:covid19monitor/app/models/covid19_india_response.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with StateMixin<Covid19IndiaResponse> {
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    _fetchData();
    super.onInit();
  }

  Future<void> _fetchData() async {
    isLoading(true);
    await Covid19IndiaApi().getCity().then(
      (Covid19IndiaResponse response) {
        change(response, status: RxStatus.success());
      },
      onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      },
    );
    isLoading(false);
  }
}
