import 'package:covid19tracker/core/widgets/banner.dart';
import 'package:covid19tracker/core/widgets/categoryTypes.dart';
import 'package:covid19tracker/core/widgets/dataList.dart';
import 'package:covid19tracker/core/widgets/head.dart';
import 'package:covid19tracker/core/widgets/themeButton.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final updateTime = 0;

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
