import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:zhalkhas_githubio/text.dart';
import 'package:zhalkhas_githubio/util.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(
          shape: const CircleBorder(),
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
        const Text(
          "Senior year student at Nazarbayev University, Astana"
          "\nJunior Software Engineer",
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 5,
              child: TextButton.icon(
                icon: const Icon(
                  FontAwesome5.github,
                  color: Colors.white,
                ),
                onPressed:
                    redirect('https://github.com/Zhalkhas') as void Function()?,
                label: const Text(
                  "Github",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: TextButton.icon(
                icon: const Icon(
                  FontAwesome5.telegram_plane,
                  color: Colors.blue,
                ),
                onPressed:
                    redirect('https://t.me/kruzenshtern2') as void Function()?,
                label: const Text(
                  "Telegram",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: TextButton.icon(
                icon: const Icon(
                  Icons.mail_outline,
                  color: Colors.red,
                ),
                onPressed: redirect('mailto:zhalgas.khassenov@nu.edu.kz')
                    as void Function()?,
                label: const Text(
                  "Gmail",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
