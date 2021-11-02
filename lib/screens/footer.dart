import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:zhalkhas_githubio/util.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return gridViewBuilder(
      header: "Some random facts",
      crossAxisCount: width > 800 ? 2 : 1,
      children: [
        ...[
          {
            'icon': const Icon(Icons.music_note),
            'name': 'Former member of NU Orchestra',
            'description': '',
          },
          {
            'icon': const Icon(Icons.security_outlined),
            'name': 'Member of NU ACM Cybersecurity SIG',
            'description': '',
          },
          {
            'icon': const Icon(Icons.music_note),
            'name': 'Play on guitar, dombra, sazsyrnai',
            'description': '',
          },
          {
            'icon': const Icon(Icons.score),
            'name': 'Scored 355 on Root-Me',
            'description': '',
          },
          {
            'name': 'Won 2nd place at TSARKA’s hardware task at HackNU 2019',
            'icon': const Icon(Fontelico.crown),
            'description': '',
          }, {
            'name': 'Won 1st place at BTSD`s task at HackNU 2021',
            'icon': const Icon(Fontelico.crown),
            'description': '',
          },
          {
            'name': 'Participated at r0 Crew as a speaker',
            'icon': const Icon(Icons.group),
            'description': '',
          }
        ]
            .map(
              (e) => ListTile(
                leading: e['icon'] as Widget?,
                title: Text(e['name'] as String),
                subtitle: Text(e['description'] as String),
              ),
            )
            .toList(),
      ],
    );
  }
}
