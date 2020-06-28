import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeBloc with ChangeNotifier {

  var _notificationTheme = SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  ThemeData _themeData = ThemeData.light();

  ThemeData get currentTheme => _themeData;
  get currentNotificationTheme => _notificationTheme;

  set currentTheme(ThemeData value) {
    _themeData = value;
    notifyListeners();
  }

  set currentNotificationTheme(value) {
    _notificationTheme = value;
    notifyListeners();
  }
}