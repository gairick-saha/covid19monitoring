import 'package:get/get.dart';

class HelplineController extends GetxController {
  List<String> menuItems = [
    'OXYGEN',
    'DOCTORS',
    'VOLUNTEERS',
    'BEDS',
  ];

  RxString selectedMenu = ''.obs;

  @override
  void onInit() {
    selectedMenu(menuItems[0]);
    super.onInit();
  }

  void changeMenu(index) {
    selectedMenu(menuItems[index]);
  }
}
