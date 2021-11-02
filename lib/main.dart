import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:zhalkhas_githubio/screens/base.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'zhalkhas.github.io',
      theme: ThemeData.dark(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        widget!,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      initialRoute: '/',
      routes: {'/': (context) => const Base()},
    );
  }
}
