import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/helpline_controller.dart';

class HelplineView extends GetView<HelplineController> {
  const HelplineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: kToolbarHeight - 10,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.chevron_left),
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: Get.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'CHECK YOUR LOCATION',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.15,
                        vertical: Get.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        color: Theme.of(context).canvasColor,
                      ),
                      child: TextField(
                        onChanged: (value) {},
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.bottom,
                        cursorWidth: 1,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                        decoration: InputDecoration(
                          hintText: 'ENTER YOUR LOCATION',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.7),
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const MenuWidget(
              title: 'WHAT YOU NEED NOW',
            ),
            const Divider(
              color: Colors.transparent,
            ),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: const Color(0xFFE9573F),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  minWidth: Get.width * 0.8,
                  height: Get.height * 0.05,
                  child: const Text(
                    'SEARCH',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                ),
                Image.asset(
                  'assets/images/guidelines.png',
                  scale: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuWidget extends GetWidget<HelplineController> {
  final String title;
  const MenuWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: Get.height <= 600 ? Get.height * 0.22 : Get.height * 0.2,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: Get.height * 0.05,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                color: Theme.of(context).primaryColor,
              ),
              alignment: Alignment.center,
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: Get.height * 0.02,
                  horizontal: Get.width * 0.02,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(controller.menuItems.length, (index) {
                    Widget? child;
                    if (controller.menuItems[index] == "OXYGEN") {
                      child = Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              'assets/images/oxygen.png',
                              scale: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              controller.menuItems[index],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFFE9573F),
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    if (controller.menuItems[index] == "DOCTORS") {
                      child = Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              'assets/images/doctor.png',
                              scale: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              controller.menuItems[index],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFFE9573F),
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    if (controller.menuItems[index] == "VOLUNTEERS") {
                      child = Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              'assets/images/volunteers.png',
                              scale: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              controller.menuItems[index],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFFE9573F),
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    if (controller.menuItems[index] == "BEDS") {
                      child = Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              "assets/images/hospital-bed.png",
                              scale: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              controller.menuItems[index],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFFE9573F),
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // if (title == "WHAT YOU NEED NOW") {
                          //   controller.selectMenu(index);
                          // } else {

                          // }
                          controller.changeMenu(index);
                        },
                        child: DecoratedBox(
                          // width: Get.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            color: controller.selectedMenu.value ==
                                    controller.menuItems[index]
                                ? const Color(0xFFDEFDFF)
                                : Colors.transparent,
                          ),
                          child: child,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
