import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:zhalkhas_githubio/util.dart';

class Frameworks extends StatelessWidget {
  final techologies = [
    {
      'name': 'Docker',
      'icon': const Icon(FlutterDEVICON.docker_plain),
      'level': 'Familiar',
    },
    {
      'name': 'SQL',
      'icon': const Icon(FlutterDEVICON.postgresql_plain),
      'level': 'Familiar',
    },
    {
      'name': 'Arduino',
      'icon': const Icon(FlutterDEVICON.c_line),
      'level': 'Familiar',
    },
    {
      'name': 'STM32 HAL',
      'icon': const Icon(FlutterDEVICON.c_line),
      'level': 'Familiar',
    },
    {
      'name': 'NodeJS',
      'icon': const Icon(FlutterDEVICON.nodejs_plain),
      'level': 'Familiar',
    },
    {
      'name': 'Software Defined Radio',
      'icon': const Icon(Octicons.radio_tower),
      'level': 'Familiar',
    },
    {
      'name': 'Django',
      'icon': const Icon(FlutterDEVICON.django_plain),
      'level': 'Familiar',
    },
    {
      'name': 'POSIX',
      'icon': const Icon(FlutterDEVICON.c_line),
      'level': 'Familiar',
    },
    {
      'name': 'Linux',
      'icon': const Icon(FlutterDEVICON.linux_plain),
      'level': 'Proficient',
    }
  ];

  Frameworks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return gridViewBuilder(
      header: "Frameworks/Technologies",
      childAspectRatio: 3,
      children: [
        ...techologies
            .map(
              (e) => ListTile(
                leading: e['icon'] as Widget?,
                title: Text(e['name'] as String),
                subtitle: Text(e['level'] as String),
              ),
            )
            .toList()
      ],
    );
  }
}
