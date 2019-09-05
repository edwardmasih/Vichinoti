import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vichinoti/model/text_syles.dart';
import 'package:vichinoti/model/main_menu_items.dart';
import 'package:vichinoti/model/places.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          color: Colors.brown[100],
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.only(
                    left: width * 0.05,
                    right: width * 0.04,
                    top: height * 0.02,
                    bottom: height * 0.02,
                  ),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Vichinoti & Co.",
                        style: AppTheme().main_heading,
                      ),
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset('assets/logo.png'),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Container(
                  width: width,
                  height: height * 0.06,
                  padding: EdgeInsets.only(
                    left: width * 0.05,
                    right: width * 0.04,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: main_menu_items.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 5,
                          right: 10,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: main_menu_items[index].isSelected
                                ? Color(0xff0245FC)
                                : Color(0xffDDE7F9),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 20,
                            ),
                            child: Text(
                              main_menu_items[index].title,
                              style: TextStyle(
                                letterSpacing: 1.1,
                                fontSize: 18,
                                fontFamily: 'JosefinSans',
                                color: main_menu_items[index].isSelected
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    width: width,
                    child: CarouselSlider(
                      enableInfiniteScroll: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        pauseAutoPlayOnTouch: Duration(seconds: 5),
                        enlargeCenterPage: true,
                        viewportFraction: 0.9,
                        initialPage: 0,
                        height: height * 0.4,
//                        items:places.map(f)
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
