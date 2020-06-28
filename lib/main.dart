import 'package:covid19tracker/core/providers/themeProvider.dart';
import 'package:covid19tracker/core/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: Covid19App(),
    );
  }
}

class Covid19App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final _theme = Provider.of<ThemeBloc>(context);

    return MaterialApp(
      title: 'Covid-19 Tracker',
      debugShowCheckedModeBanner: false,
      theme: _theme.currentTheme,
      home: HomePage(),
    );
  }
}

