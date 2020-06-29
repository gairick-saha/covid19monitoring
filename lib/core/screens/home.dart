import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:covid19tracker/core/models/dataClass.dart';
import 'package:covid19tracker/core/providers/dataProvider.dart';
import 'package:covid19tracker/core/widgets/banner.dart';
import 'package:covid19tracker/core/widgets/dataList.dart';
import 'package:covid19tracker/core/widgets/head.dart';
import 'package:covid19tracker/core/widgets/themeButton.dart';
import 'package:flutter/material.dart';
import 'package:covid19tracker/core/services/api_services.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final updateTime = 0;
  List timeSeriesData;
  List stateData;
  List testData;
  final String url = 'https://api.covid19india.org/data.json';

  Future getData() async {
    final response = await http.get(url);
    Map<String, dynamic> map = json.decode(response.body);
    timeSeriesData = map['cases_time_series'];
    stateData = map['statewise'];
    testData = map['tested'];
    print(timeSeriesData.last);
    // print(stateData.length);
    // print(testData.length);
    return ({timeSeriesData, stateData, testData});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: height * 0.05,
          ),
          HeadSection(
            updatedTime: updateTime,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ThemeButton(),
            ],
          ),
          Divider(),
          UpperSection(),
          Divider(),
          // CategoryTypes(),

          DataList(),
        ],
      ),
    );
  }
}
