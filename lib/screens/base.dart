import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zhalkhas_githubio/screens/courses.dart';
import 'package:zhalkhas_githubio/screens/education.dart';
import 'package:zhalkhas_githubio/screens/footer.dart';
import 'package:zhalkhas_githubio/screens/frameworks.dart';
import 'package:zhalkhas_githubio/screens/languageStats.dart';
import 'package:zhalkhas_githubio/screens/languages.dart';
import 'package:zhalkhas_githubio/screens/profile.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:zhalkhas_githubio/screens/projects.dart';

class Base extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  List<Widget> _widgets = [
    Profile(),
    Education(),
    Languages(),
    Frameworks(),
    LanguageStats(),
    Projects(),
    Courses(),
    Footer(),
  ];
  SwiperController _swiperController = SwiperController();
  List<String> _imageNames = [
    "assets/main.jpg",
    "assets/carousel1.jpg",
    "assets/carousel2.jpg",
    "assets/carousel3.jpg",
    "assets/carousel4.jpg",
    "assets/carousel5.jpg",
    "assets/carousel6.jpg",
    "assets/carousel7.jpg",
  ];
  List<Image> _images;
  @override
  void initState() {
    super.initState();
    _images = [..._imageNames.map((e) => Image.asset(e)).toList()];
  }

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
                        control: SwiperControl(color: Colors.white),
                        itemCount: _images.length,
                        itemBuilder: (context, index) => _images[index],
                        pagination: SwiperPagination(),
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
                              padding: EdgeInsets.symmetric(
                                  vertical: 40, horizontal: 40),
                            ),
                            control: SwiperControl(
                              disableColor: Colors.transparent,
                              color: Colors.grey,
                            ),
                            pagination: SwiperPagination(
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
                        padding:
                            EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                      ),
                      control: SwiperControl(
                        disableColor: Colors.transparent,
                        color: Colors.grey,
                      ),
                      pagination: SwiperPagination(
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
