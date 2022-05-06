import 'package:covid19monitor/app/models/covid19_india_response.dart';
import 'package:covid19monitor/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.HELPLINE);
            },
            icon: const Icon(Icons.help_outline_rounded),
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
          _themeChangeButton(),
        ],
      ),
      body: controller.obx(
        (state) => Column(
          children: [
            _buildCountsRow(state),
            const Divider(
              height: 20,
              color: Colors.transparent,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: _buildCategoryTypesRow(),
            ),
            const Divider(
              height: 20,
              thickness: 1,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 10.0,
            //   ),
            //   child: _buildListItem(context, 0, state!.statewise[0]),
            // ),
            // const Divider(
            //   height: 20,
            //   color: Colors.transparent,
            // ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 10.0,
                ),
                itemBuilder: (context, index) {
                  return _buildListItem(
                      context, index, state!.statewise[index + 1]);
                },
                separatorBuilder: (_, __) => const Divider(
                  color: Colors.transparent,
                ),
                itemCount: state!.statewise.length - 1,
              ),
            ),
          ],
        ),
        onLoading: Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ),
        ),
        onError: (String? error) {
          return Center(
            child: Text(error.toString()),
          );
        },
      ),
    );
  }
}

Widget _buildListItem(BuildContext context, int index, Statewise state) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Expanded(
        flex: 2,
        child: Text(
          state.state!,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const VerticalDivider(),
      Expanded(
        flex: 1,
        child: Text(
          state.confirmed!,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
      const VerticalDivider(),
      Expanded(
        flex: 1,
        child: Text(
          state.active!,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      const VerticalDivider(),
      Expanded(
        flex: 1,
        child: Text(
          state.recovered!,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
      const VerticalDivider(),
      Expanded(
        flex: 1,
        child: Text(
          state.deaths!,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
      ),
    ],
  );
}

Widget _buildCategoryTypesRow() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: const <Widget>[
      Expanded(
        flex: 2,
        child: Text(
          'STATE/UT',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      VerticalDivider(),
      Expanded(
        flex: 1,
        child: Text(
          'CNFMD',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
      VerticalDivider(),
      Expanded(
        flex: 1,
        child: Text(
          'ACTV',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      VerticalDivider(),
      Expanded(
        flex: 1,
        child: Text(
          'RCVRD',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
      VerticalDivider(),
      Expanded(
        flex: 1,
        child: Text(
          'DCSD',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
      ),
    ],
  );
}

Widget _themeChangeButton() {
  return IconButton(
    icon: Get.isDarkMode
        ? const Icon(FontAwesomeIcons.cloudSun)
        : const Icon(FontAwesomeIcons.moon),
    onPressed: () {
      if (!Get.isDarkMode) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
        Get.changeTheme(ThemeData.dark());
      } else {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
        Get.changeTheme(ThemeData.light());
      }
    },
    color: Get.isDarkMode ? Colors.white : Colors.black,
  );
}

Widget _buildCountsRow(Covid19IndiaResponse? state) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      _buildTotalCountsCard(
        title: "CONFIRMED",
        count: state == null ? 0 : int.parse(state.statewise.first.confirmed!),
        image: 'assets/images/virus.png',
        color: Colors.red,
      ),
      _buildTotalCountsCard(
        title: "ACTIVE CASES",
        count: state == null ? 0 : int.parse(state.statewise.first.active!),
        image: 'assets/images/sick.png',
        color: Colors.blue,
      ),
      _buildTotalCountsCard(
        title: "RECOVERED",
        count: state == null ? 0 : int.parse(state.statewise.first.recovered!),
        image: 'assets/images/recovered.png',
        color: Colors.green,
      ),
      _buildTotalCountsCard(
        title: "DECEASED",
        count: state == null ? 0 : int.parse(state.statewise.first.deaths!),
        image: 'assets/images/rip.png',
        color: Colors.blueGrey,
      ),
    ],
  );
}

Widget _buildTotalCountsCard({
  required String title,
  required int count,
  required String image,
  required Color color,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        title,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      ImageIcon(
        AssetImage(image),
        size: Get.width * 0.15,
        color: color,
      ),
      const SizedBox(
        height: 10.0,
      ),
      Text(
        '$count',
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
