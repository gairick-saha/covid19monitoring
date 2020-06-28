import 'package:flutter/material.dart';

class HeadSection extends StatelessWidget {

  final updatedTime;

  HeadSection({Key key, this.updatedTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "INDIA COVID-19 \nTRACKER",
            style: TextStyle(fontSize: width * 0.05, fontWeight: FontWeight.bold),
          ),
          Text(
            "LAST UPDATED \n${this.updatedTime} MINUTES AGO",
            textAlign: TextAlign.end,
            style:
                TextStyle(fontSize: width * 0.035, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
