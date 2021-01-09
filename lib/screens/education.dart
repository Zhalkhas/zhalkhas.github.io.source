import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:zhalkhas_githubio/text.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            "Education",
            style: heading,
          ),
        ),
        ListTile(
          leading: Text("2011-2016"),
          title: Text(
              'Regional Specialized Boarding school named after N.Nurmakov'),
          subtitle: Text('Kazakhstan, Karagandy'),
        ),
        ListTile(
          leading: Text('2016-2017'),
          title: Text('Nazarbayev University,Foundation Year Programme'),
          subtitle: Text('Astana, Kazakhstan'),
        ),
        ListTile(
          leading: Text('2017-2021'),
          title: Text('Bachelor  in  Computer  Science'),
          subtitle: Text('Astana, Kazakhstan'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            "Experience",
            style: heading,
          ),
        ),
        ListTile(
          leading: Text('2019-now'),
          title: Text('TSARKA'),
          subtitle: Text('Hardware Engineer && Android Developer'),
        ),
        ListTile(
          leading: Text('2020-now'),
          title: Text('ToleGO'),
          subtitle: Text('Android && iOS developer'),
        ),
      ],
    );
  }
}
