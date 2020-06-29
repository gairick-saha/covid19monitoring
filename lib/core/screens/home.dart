import 'dart:convert';

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

  DataClass data = DataClass();

  @override
  void initState() {
    super.initState();
    HitApi.getData().then(
      (value) {
        data = value;
        print(value.statewise);
      },
    );
    // Provider.of<DataProvider>(context).setData(data);
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
