import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:zhalkhas_githubio/util.dart';

class Languages extends StatelessWidget {
  final languages = [
    {
      'name': 'C',
      'icon': Icon(FlutterDEVICON.c_line),
      'level': 'Proficient',
    },
    {
      'name': 'Python',
      'icon': Icon(FlutterDEVICON.python_plain),
      'level': 'Proficient',
    },
    {
      'name': 'Golang',
      'icon': Icon(FlutterDEVICON.go_plain),
      'level': 'Proficient',
    },
    {
      'name': 'Kotlin',
      'icon': Icon(FlutterDEVICON.kotlin_plain),
      'level': 'Familiar',
    },
    {
      'name': 'Dart (Flutter)',
      'icon': Icon(FlutterDEVICON.flutter_plain),
      'level': 'Proficient',
    },
    {
      'name': 'JavaScript/TypeScript',
      'icon': Icon(FlutterDEVICON.typescript_plain),
      'level': 'Familiar',
    },
    {
      'name': 'Java',
      'icon': Icon(FlutterDEVICON.java_plain),
      'level': 'Familiar',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return gridViewBuilder(
      header: "Languages",
      childAspectRatio: 3,
      children: [
        ...languages
            .map(
              (e) => ListTile(
                leading: e['icon'],
                title: Text(e['name']),
                subtitle: Text(e['level']),
              ),
            )
            .toList(),
      ],
    );
  }
}
