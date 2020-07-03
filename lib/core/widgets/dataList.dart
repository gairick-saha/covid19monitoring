import 'package:covid19tracker/core/providers/dataProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataList extends StatefulWidget {
  @override
  _DataListState createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final _stateWiseList =
        Provider.of<DataProvider>(context).getData().statewise;

    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20.0, bottom: 15.0, left: 5.0),
        child: _stateWiseList.length > 0
            ? ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 0.0),
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: _stateWiseList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: width * 0.3,
                            child: Text(
                              "${_stateWiseList[index].state}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            '"${_stateWiseList[index].confirmed}"',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            "${_stateWiseList[index].active}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            "${_stateWiseList[index].recovered}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            "${_stateWiseList[index].deaths}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                ),
              ),
      ),
    );
  }
}
