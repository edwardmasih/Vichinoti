import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vichinoti/model/text_syles.dart';
import 'package:vichinoti/model/main_menu_items.dart';

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
              Container(
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
                      padding: EdgeInsets.only(right: 10),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: main_menu_items[index].isSelected
                              ? Colors.lightBlueAccent
                              : Color(0xffDDE7F9),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
