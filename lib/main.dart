import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:zhalkhas_githubio/screens/base.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'zhalkhas.github.io',
      theme: ThemeData.dark(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        widget,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.autoScale(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      initialRoute: '/',
      routes: {'/': (context) => Base()},
    );
  }
}
