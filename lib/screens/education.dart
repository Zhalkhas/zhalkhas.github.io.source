import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zhalkhas_githubio/text.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            "Education",
            style: heading,
          ),
        ),
        const ListTile(
          leading: Text("2011-2016"),
          title: Text(
              'Regional Specialized Boarding school named after N.Nurmakov'),
          subtitle: Text('Kazakhstan, Karagandy'),
        ),
        const ListTile(
          leading: Text('2016-2017'),
          title: Text('Nazarbayev University,Foundation Year Programme'),
          subtitle: Text('Astana, Kazakhstan'),
        ),
        const ListTile(
          leading: Text('2017-2021'),
          title: Text('Bachelor  in  Computer  Science'),
          subtitle: Text('Astana, Kazakhstan'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            "Experience",
            style: heading,
          ),
        ),
        const ListTile(
          leading: Text('2019-2021'),
          title: Text('TSARKA'),
          subtitle: Text('Hardware Engineer && Android Developer'),
        ),
        const ListTile(
          leading: Text('2020-now'),
          title: Text('ToleGO'),
          subtitle: Text('Android && iOS developer'),
        ),
        const ListTile(
          leading: Text('2021-now'),
          title: Text('Buhta.com'),
          subtitle: Text('Android && iOS developer'),
        )
      ],
    );
  }
}
