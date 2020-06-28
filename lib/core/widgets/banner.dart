import 'package:flutter/material.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Text(
              "CONFIRMED",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/images/virus.png',
              width: width * 0.15,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "0",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Text(
              "ACTIVE",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Image.asset(
              'assets/images/sick.png',
              width: width * 0.15,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "0",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Text(
              "RECOVERED",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/images/recovered.png',
              width: width * 0.15,
              color: Colors.green,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "0",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Text(
              "DECEASED",
              style: TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/images/rip.png',
              width: width * 0.15,
              color: Colors.blueGrey,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "0",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
