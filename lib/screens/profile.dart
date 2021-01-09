import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'package:zhalkhas_githubio/text.dart';
import 'package:zhalkhas_githubio/util.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(
          shape: CircleBorder(),
          elevation: 15,
          child: CircleAvatar(
            radius: 95,
            child: Image.asset('assets/round_avatar.png'),
          ),
        ),
        Text(
          "Oh, Hi Mark.\nI'm Zhalgas Khassenov",
          style: heading,
          textAlign: TextAlign.center,
        ),
        Text(
          "Senior year student at Nazarbayev University, Astana"
          "\nJunior Software Engineer",
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 5,
              child: FlatButton.icon(
                icon: Icon(FontAwesome5.github
                    //color: Colors.white,
                    ),
                onPressed: redirect('https://github.com/Zhalkhas'),
                label: Text("Github"),
              ),
            ),
            Card(
              elevation: 5,
              child: FlatButton.icon(
                icon: Icon(
                  FontAwesome5.telegram_plane,
                  color: Colors.blue,
                ),
                onPressed: redirect('https://t.me/kruzenshtern2'),
                label: Text("Telegram"),
              ),
            ),
            Card(
              elevation: 5,
              child: FlatButton.icon(
                icon: Icon(
                  Icons.mail_outline,
                  color: Colors.red,
                ),
                onPressed: redirect('mailto:zhalgas.khassenov@nu.edu.kz'),
                label: Text("Gmail"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
