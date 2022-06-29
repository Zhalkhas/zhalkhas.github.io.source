import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:zhalkhas_githubio/util.dart';

class Languages extends StatelessWidget {
  final languages = [
    {
      'name': 'C',
      'icon': const Icon(FlutterDEVICON.c_line),
      'level': 'Proficient',
    },
    {
      'name': 'Python',
      'icon': const Icon(FlutterDEVICON.python_plain),
      'level': 'Proficient',
    },
    {
      'name': 'Golang',
      'icon': const Icon(FlutterDEVICON.go_plain),
      'level': 'Proficient',
    },
    {
      'name': 'Kotlin',
      'icon': const Icon(FlutterDEVICON.kotlin_plain),
      'level': 'Familiar',
    },
    {
      'name': 'Dart (Flutter)',
      'icon': const Icon(FlutterDEVICON.flutter_plain),
      'level': 'Proficient',
    },
    {
      'name': 'JavaScript/TypeScript',
      'icon': const Icon(FlutterDEVICON.typescript_plain),
      'level': 'Familiar',
    },
    {
      'name': 'Java',
      'icon': const Icon(FlutterDEVICON.java_plain),
      'level': 'Familiar',
    }
  ];

  Languages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return gridViewBuilder(
      header: "Languages",
      childAspectRatio: 3,
      children: [
        ...languages
            .map(
              (e) => ListTile(
                leading: e['icon'] as Widget?,
                title: Text(e['name'] as String),
                subtitle: Text(e['level'] as String),
              ),
            )
            .toList(),
      ],
    );
  }
}
