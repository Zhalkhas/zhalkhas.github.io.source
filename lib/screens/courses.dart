import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:zhalkhas_githubio/util.dart';

class Courses extends StatelessWidget {
  final courses = [
    {
      'name': 'Performance and Data Structures',
      'icon': Icon(FlutterDEVICON.java_plain),
    },
    {
      'name': 'Computer Systems and Organization',
      'icon': Icon(Icons.computer),
    },
    {
      'name': 'Algorithms',
      'icon': Icon(Icons.computer),
    },
    {
      'name': 'Software Engineering',
      'icon': Icon(FlutterDEVICON.java_plain),
      'link': 'https://github.com/Zhalkhas/railway_management'
    },
    {
      'name': 'Database Systems',
      'icon': Icon(FlutterDEVICON.mysql_plain),
    },
    {
      'name': 'Computer Networks',
      'link': 'https://github.com/Zhalkhas/FileTracker',
      'icon': Icon(FlutterDEVICON.python_plain),
    },
    {
      'name': 'Operaing Systems',
      'link': 'https://github.com/Zhalkhas/OS_CSCI332',
      'icon': Icon(FlutterDEVICON.c_line),
    },
    {
      'name': 'Compiler Construction',
      'link': 'https://github.com/Zhalkhas/CSCI355_Compiler_Construction',
      'icon': Icon(FlutterDEVICON.java_plain),
    }
  ];
  @override
  Widget build(BuildContext buildContext) {
    double width = MediaQuery.of(buildContext).size.width;
    return gridViewBuilder(
      header: "Relevant Courses",
      childAspectRatio: 5,
      crossAxisCount: width > 800 ? 2 : 1,
      children: [
        ...courses
            .map(
              (e) => ListTile(
                leading: e['icon'],
                title: Text(e['name']),
                trailing: e.containsKey('link')
                    ? IconButton(
                        icon: Icon(Icons.link),
                        onPressed: redirect(
                          e['link'],
                        ),
                      )
                    : SizedBox(
                        width: 0,
                        height: 0,
                      ),
              ),
            )
            .toList()
      ],
    );
  }
}
