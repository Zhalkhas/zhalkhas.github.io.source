import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:zhalkhas_githubio/util.dart';

class Courses extends StatelessWidget {
  final courses = [
    {
      'name': 'Performance and Data Structures',
      'icon': const Icon(FlutterDEVICON.java_plain),
    },
    {
      'name': 'Computer Systems and Organization',
      'icon': const Icon(Icons.computer),
    },
    {
      'name': 'Algorithms',
      'icon': const Icon(Icons.computer),
    },
    {
      'name': 'Software Engineering',
      'icon': const Icon(FlutterDEVICON.java_plain),
      'link': 'https://github.com/Zhalkhas/railway_management'
    },
    {
      'name': 'Database Systems',
      'icon': const Icon(FlutterDEVICON.mysql_plain),
    },
    {
      'name': 'Computer Networks',
      'link': 'https://github.com/Zhalkhas/FileTracker',
      'icon': const Icon(FlutterDEVICON.python_plain),
    },
    {
      'name': 'Operating Systems',
      'link': 'https://github.com/Zhalkhas/OS_CSCI332',
      'icon': const Icon(FlutterDEVICON.c_line),
    },
    {
      'name': 'Compiler Construction',
      'link': 'https://github.com/Zhalkhas/CSCI355_Compiler_Construction',
      'icon': const Icon(FlutterDEVICON.java_plain),
    },
    {
      'name': 'GPU programming',
      'icon': const Icon(FlutterDEVICON.c_line),
    },
  ];

  Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return gridViewBuilder(
      header: "Relevant Courses",
      childAspectRatio: 5,
      crossAxisCount: width > 800 ? 2 : 1,
      children: [
        ...courses
            .map(
              (e) => ListTile(
                leading: e['icon'] as Widget?,
                title: Text(e['name'] as String),
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
