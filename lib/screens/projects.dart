import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_devicon/flutter_devicon.dart' show FlutterDEVICON;
import 'package:zhalkhas_githubio/util.dart';

class Projects extends StatelessWidget {
  final projects = [
    {
      "icon": const Icon(FlutterDEVICON.django_line),
      "name": "HMD",
      "description":
          "Online health consulting system which utilizes machine learning algorithms",
      "link": "https://github.com/Zhalkhas/HMD",
    },
    {
      "icon": const Icon(FlutterDEVICON.go_plain),
      "name": "Anon_bot",
      "description":
          "Anonym bot for Telegram, which resends messages to predefined group",
      "link": "https://github.com/Zhalkhas/anon_bot"
    },
    {
      "icon": const Icon(FlutterDEVICON.flutter_plain),
      "name": "anonymbot_frontend",
      "description":
          "Frontend of Anonym bot, website resends messages to the chat instantaneously",
      "link": "https://github.com/Zhalkhas/anonymbot_frontend",
    },
    {
      "icon": const Icon(FlutterDEVICON.flutter_plain),
      "name": "Irregular verbs app",
      "description":
          "Mobile application which helps user to learn irregular verbs",
      "link": "https://github.com/Zhalkhas/irregular_verbs_app"
    },
    {
      "icon": const Icon(FlutterDEVICON.django_line),
      "name": "djauth_ctf",
      "description":
          "Django app written for hosting CTF and ease it with already written login and ranking system",
      "link": "https://github.com/Zhalkhas/djauth_ctf",
    },
    {
      "icon": const Icon(FlutterDEVICON.c_line),
      "name": "EInkReader",
      "description": "Firmware for E-Ink reader based on LillyGO TTGO T5 v2.7",
      "link": "https://github.com/Zhalkhas/EInkReader",
    },
    {
      "icon": const Icon(FlutterDEVICON.docker_plain),
      "name": "grgsm_docker",
      "description": "Docker image for GSM sniffing",
      "link": "https://github.com/Zhalkhas/grgsm_docker",
    },
    {
      "icon": const Icon(FlutterDEVICON.electron_original),
      "name": "MAASPCalc",
      "description":
          "Electron desktop app which allows to make MAASP calculations",
      "link": "https://github.com/Zhalkhas/MAASPcalc"
    },
    {
      "icon": const Icon(FlutterDEVICON.c_line),
      "name": "Atmospheric pressure analyzing system “Lyolik”",
      "description":
          "Arduino device which uses information on atmospheric pressure for estimating weather change",
      "link": "https://github.com/Zhalkhas/frkstr",
    },
    {
      "icon": const Icon(FlutterDEVICON.flutter_plain),
      "name": "zhalkhas.github.io",
      "description": "Well, this website is basically the project",
      "link": "https://github.com/Zhalkhas/zhalkhas.github.io.source"
    }
  ];

  Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return gridViewBuilder(
      header: "Projects",
      childAspectRatio: 1.2,
      crossAxisCount: width > 800 ? 2 : 1,
      children: [
        ...projects
            .map(
              (e) => ListTile(
                leading: e['icon'] as Widget?,
                title: Text(e['name'] as String),
                subtitle: Text(e['description'] as String),
                trailing: e.containsKey('link')
                    ? IconButton(
                        icon: const Icon(Icons.link),
                        onPressed: redirect(
                          e['link'],
                        ) as void Function()?,
                      )
                    : const SizedBox.shrink(),
              ),
            )
            .toList()
      ],
    );
  }
}
