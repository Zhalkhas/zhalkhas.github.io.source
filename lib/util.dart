import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:zhalkhas_githubio/text.dart';
import 'dart:js' show context;

Function redirect(url) => () => context.callMethod('open', [url]);

Widget gridViewBuilder(
    {@required String header,
    double childAspectRatio = 4,
    List<Widget> children = const [],
    int crossAxisCount = 2}) {
  return StickyHeader(
    header: Text(
      header,
      style: heading,
      textAlign: TextAlign.start,
    ),
    content: Padding(
      padding: EdgeInsets.only(top: 40),
      child: Scrollbar(
        child: GridView.count(
            childAspectRatio: childAspectRatio,
            crossAxisCount: crossAxisCount,
            children: children),
      ),
    ),
  );
}
