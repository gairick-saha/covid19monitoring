import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class HeadSection extends StatelessWidget {
  HeadSection({Key key}) : super(key: key);

  final int timer = DateTime.now().millisecondsSinceEpoch + 1000 * 60 * 60;

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
            style:
                TextStyle(fontSize: width * 0.05, fontWeight: FontWeight.bold),
          ),
          CountdownTimer(
            endTime: timer,
            widgetBuilder: (_, CurrentRemainingTime time) {
              return Text(
                'LAST UPDATED \n${time.min} MINUTES ${time.sec} SECONDS AGO',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: width * 0.035,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
