import 'package:get/get.dart';

import '../controllers/helpline_controller.dart';

class HelplineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelplineController>(
      () => HelplineController(),
    );
  }
}
