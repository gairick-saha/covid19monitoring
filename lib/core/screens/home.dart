import 'package:covid19tracker/core/providers/dataProvider.dart';
import 'package:covid19tracker/core/services/api_services.dart';
import 'package:covid19tracker/core/widgets/banner.dart';
import 'package:covid19tracker/core/widgets/categoryTypes.dart';
import 'package:covid19tracker/core/widgets/dataList.dart';
import 'package:covid19tracker/core/widgets/themeButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HitApi fetchData = HitApi();

  _getData() {
    final _getData = Provider.of<DataProvider>(context);
    fetchData.getData().then((data) {
      _getData.setData(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    _getData();

    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: height * 0.05,
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
          CategoryTypes(),
          DataList(),
        ],
      ),
    );
  }
}
