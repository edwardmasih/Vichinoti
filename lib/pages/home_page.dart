import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vichinoti/model/text_syles.dart';
import 'package:vichinoti/model/main_menu_items.dart';
import 'package:vichinoti/model/places.dart';
import 'package:vichinoti/widgets/carousel_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

class SliderClass {
  final String sliderTitle;
  final String sliderImagePath;
  final Color shadowColor;

  SliderClass(this.sliderTitle, this.sliderImagePath, this.shadowColor);
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SliderClass> carouselSliderList = List<SliderClass>();

  void falseEverything(){
    for(int i=0; i<places.length; i++){
      mainMenuItem[i].isSelected = false;
    }
  }
  void onTappedMainMenuItem(int index) {
    setState(() {
      switch (index) {
        case 0:
          falseEverything();
          mainMenuItem[0].isSelected = true;
          break;
        case 1:
          falseEverything();
          mainMenuItem[1].isSelected = true;
          break;
        case 2:
          falseEverything();
          mainMenuItem[2].isSelected = true;
          break;
        case 3:
          falseEverything();
          mainMenuItem[3].isSelected = true;
          break;
        case 4:
          falseEverything();
          mainMenuItem[4].isSelected = true;
          break;
      }
    });
  }

  int currentNavTabIndex = 0;
  onTappedNavBar(int index) {
    setState(() {
      currentNavTabIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < places.length; i++) {
      carouselSliderList.add(SliderClass(places[i].placeName.toString(),
          places[i].imagePath, places[i].shadowColors));
    }

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
          child: Column(
            children: <Widget>[
              //MAIN APP BAR WITH THE LOGO
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
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "Vichinoti & Co.",
                          style: AppTheme().mainHeading,
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset('assets/logo.png'),
                      ),
                    ],
                  ),
                ),
              ),

              //LIST VIEW SLIDER WITH PAGE OPTIONS
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Container(
                  width: width,
                  height: height * 0.06,
                  padding: EdgeInsets.only(
                    left: width * 0.05,
                    right: width * 0.04,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mainMenuItem.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                        child: InkWell(
                          onTap: () {
                            onTappedMainMenuItem(index);
                          },
                          borderRadius: BorderRadius.circular(15),
                          splashColor: Colors.lightBlueAccent,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: mainMenuItem[index].isSelected
                                  ? Color(0xff0245FC)
                                  : Color(0xffDDE7F9).withOpacity(0.5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                mainMenuItem[index].title,
                                style: TextStyle(
                                  letterSpacing: 1.1,
                                  fontSize: 18,
                                  fontFamily: 'JosefinSans',
                                  fontWeight: FontWeight.w500,
                                  color: mainMenuItem[index].isSelected
                                      ? Colors.white
                                      : Colors.black,
                                ),
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
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 2),
                    pauseAutoPlayOnTouch: Duration(seconds: 5),
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    initialPage: 4,
                    height: MediaQuery.of(context).size.height * 0.72,
                    items: carouselSliderList.map((f) {
                      return Builder(builder: (context) {
                        return InkWell(
                          onTap: () {
                            print(" Carousel KTapped");
                          },
                          child: Hero(
                            tag: f.sliderImagePath,
                            child: CarouselWidget(
                              f.sliderTitle,
                              f.sliderImagePath,
                              f.shadowColor,
                            ),
                          ),
                        );
                      });
                    }).toList(),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  bottom: 0,
                ),
                child: BubbleBottomBar(
                  iconSize: 28,
                  opacity: 0.2,
                  currentIndex: currentNavTabIndex,
                  onTap: onTappedNavBar,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  elevation: 8,
                  hasNotch: false,
                  hasInk: true,
                  //new, gives a cute ink effect
                  inkColor: Colors.black12,
                  //optional, uses theme color if not specified
                  items: <BubbleBottomBarItem>[
                    BubbleBottomBarItem(
                      backgroundColor: Colors.red,
                      icon: Icon(
                        Icons.dashboard,
                        color: Colors.black,
                      ),
                      activeIcon: Icon(
                        Icons.dashboard,
                        color: Colors.red,
                      ),
                      title: Text(
                        "Home",
                        style: AppTheme().navigationBar,
                      ),
                    ),
                    BubbleBottomBarItem(
                      backgroundColor: Colors.deepPurple,
                      icon: Icon(
                        Icons.access_time,
                        color: Colors.black,
                      ),
                      activeIcon: Icon(
                        Icons.access_time,
                        color: Colors.deepPurple,
                      ),
                      title: Text(
                        "Logs",
                        style: AppTheme().navigationBar,
                      ),
                    ),
                    BubbleBottomBarItem(
                      backgroundColor: Colors.indigo,
                      icon: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      activeIcon: Icon(
                        Icons.account_circle,
                        color: Colors.indigo,
                      ),
                      title: Text(
                        "Account",
                        style: AppTheme().navigationBar,
                      ),
                    ),
                    BubbleBottomBarItem(
                      backgroundColor: Colors.green,
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      activeIcon: Icon(
                        Icons.menu,
                        color: Colors.green,
                      ),
                      title: Text(
                        "Menu",
                        style: AppTheme().navigationBar,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
