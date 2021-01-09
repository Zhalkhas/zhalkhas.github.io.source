import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:zhalkhas_githubio/util.dart';

class Frameworks extends StatelessWidget {
  final techologies = [
    {
      'name': 'Docker',
      'icon': Icon(FlutterDEVICON.docker_plain),
      'level': 'Familiar',
    },
    {
      'name': 'SQL',
      'icon': Icon(FlutterDEVICON.postgresql_plain),
      'level': 'Familiar',
    },
    {
      'name': 'Arduino',
      'icon': Icon(FlutterDEVICON.c_line),
      'level': 'Familiar',
    },
    {
      'name': 'STM32 HAL',
      'icon': Icon(FlutterDEVICON.c_line),
      'level': 'Familiar',
    },
    {
      'name': 'NodeJS',
      'icon': Icon(FlutterDEVICON.nodejs_plain),
      'level': 'Familiar',
    },
    {
      'name': 'Software Defined Radio',
      'icon': Icon(Octicons.radio_tower),
      'level': 'Familiar',
    },
    {
      'name': 'Django',
      'icon': Icon(FlutterDEVICON.django_plain),
      'level': 'Familiar',
    },
    {
      'name': 'POSIX',
      'icon': Icon(FlutterDEVICON.c_line),
      'level': 'Familiar',
    },
    {
      'name': 'Linux',
      'icon': Icon(FlutterDEVICON.linux_plain),
      'level': 'Proficient',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return gridViewBuilder(
      header: "Frameworks/Technologies",
      childAspectRatio: 3,
      children: [
        ...techologies
            .map(
              (e) => ListTile(
                leading: e['icon'],
                title: Text(e['name']),
                subtitle: Text(e['level']),
              ),
            )
            .toList()
      ],
    );
  }
}
