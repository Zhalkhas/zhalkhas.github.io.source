import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:zhalkhas_githubio/gen/assets.gen.dart';
import 'package:zhalkhas_githubio/screens/courses.dart';
import 'package:zhalkhas_githubio/screens/education.dart';
import 'package:zhalkhas_githubio/screens/footer.dart';
import 'package:zhalkhas_githubio/screens/frameworks.dart';
import 'package:zhalkhas_githubio/screens/language_stats.dart';
import 'package:zhalkhas_githubio/screens/languages.dart';
import 'package:zhalkhas_githubio/screens/profile.dart';
import 'package:zhalkhas_githubio/screens/projects.dart';

class Base extends StatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  final List<Widget> _widgets = [
    const Profile(),
    const Education(),
    Languages(),
    Frameworks(),
    const LanguageStats(),
    Projects(),
    Courses(),
    const Footer(),
  ];
  final SwiperController _swiperController = SwiperController();

  final List<Image> _images = [
    Assets.main.image(),
    Assets.carousel1.image(),
    Assets.carousel2.image(),
    Assets.carousel3.image(),
    Assets.carousel4.image(),
    Assets.carousel5.image(),
    Assets.carousel6.image(),
    Assets.carousel7.image(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: size.width > 800
            ? Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      child: Swiper(
                        control: const SwiperControl(color: Colors.white),
                        itemCount: _images.length,
                        itemBuilder: (context, index) => _images[index],
                        pagination: const SwiperPagination(),
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Swiper(
                            loop: false,
                            controller: _swiperController,
                            scrollDirection: Axis.vertical,
                            itemCount: _widgets.length,
                            itemBuilder: (context, index) => Padding(
                              child: _widgets[index],
                              padding: const EdgeInsets.symmetric(
                                  vertical: 40, horizontal: 40),
                            ),
                            control: const SwiperControl(
                              disableColor: Colors.transparent,
                              color: Colors.grey,
                            ),
                            pagination: const SwiperPagination(
                                builder: SwiperPagination.dots,
                                alignment: Alignment.centerRight),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Swiper(
                      loop: false,
                      controller: _swiperController,
                      scrollDirection: Axis.vertical,
                      itemCount: _widgets.length,
                      itemBuilder: (context, index) => Padding(
                        child: _widgets[index],
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 40),
                      ),
                      control: const SwiperControl(
                        disableColor: Colors.transparent,
                        color: Colors.grey,
                      ),
                      pagination: const SwiperPagination(
                          builder: SwiperPagination.dots,
                          alignment: Alignment.centerRight),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
