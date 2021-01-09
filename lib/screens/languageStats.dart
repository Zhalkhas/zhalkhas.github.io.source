import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:zhalkhas_githubio/text.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

class Language {
  final String name;
  final int count;

  Language(this.name, this.count);
}

class LanguageStats extends StatelessWidget {
  Future<List<PieSeries<Language, int>>> getStats(BuildContext context) async {
    return http.get('https://api.github.com/users/Zhalkhas/repos').then(
      (responce) {
        List repos = jsonDecode(responce.body);
        List languages = repos.map((e) => e['language']).toList();
        Map<String, int> res = Map();
        languages.forEach((language) {
          if (language != null) {
            if (!res.containsKey(language)) {
              res[language] = 1;
            } else {
              res[language]++;
            }
          }
        });
        print("languages $languages");
        print("res $res");
        List<Language> resList = [];
        res.forEach((key, value) {
          resList.add(Language(key, value));
        });
        List validIndexes = List.generate(6, (index) {
          return (index + 4) % 10 * 100;
        });
        return <PieSeries<Language, int>>[
          PieSeries<Language, int>(
            pointColorMapper: (datum, index) =>
                Colors.grey[validIndexes[index % validIndexes.length]],
            dataSource: resList,
            xValueMapper: (val, indx) => indx,
            yValueMapper: (datum, index) => datum.count,
            dataLabelMapper: (datum, index) => datum.name,
            dataLabelSettings: DataLabelSettings(isVisible: true),
          )
        ];
      },
    );
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: getStats(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Text(
                  "Language stats",
                  style: heading,
                ),
                Expanded(
                  child: SfCircularChart(
                    // title: ChartTitle(text: 'Language stats', textStyle: heading),
                    series: snapshot.data,
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            print("ERROR ${snapshot.error}");
            return Center(
              child: Text("Error occured during data fetch"),
            );
          } else {
            return SpinKitRipple(
              color: Colors.white,
            );
          }
        },
      );
}
