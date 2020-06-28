import 'package:covid19tracker/core/providers/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ThemeButton extends StatelessWidget {
  ThemeButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeBloc>(
      builder: (context, changeTheme, _) => IconButton(
          icon: changeTheme.currentTheme == ThemeData.dark()
              ? Icon(FontAwesomeIcons.cloudSun)
              : Icon(FontAwesomeIcons.moon),
          onPressed: () {
            if (changeTheme.currentTheme == ThemeData.light()) {
              SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
              changeTheme.currentTheme = ThemeData.dark();
            } else {
              SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
              changeTheme.currentTheme = ThemeData.light();
            }
          }),
    );
  }
}
