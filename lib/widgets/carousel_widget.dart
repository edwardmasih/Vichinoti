import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CarouselWidget extends StatelessWidget {
  final Color shadowColor;
  final String imagePath;
  final String widgetTitle;

  CarouselWidget({this.widgetTitle, this.imagePath, this.shadowColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        //CREATING SHADOW OF CAROUSEL SLIDER
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.75,
          height: MediaQuery
              .of(context)
              .size
              .height * 0.85,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: shadowColor.withOpacity(0.8),
                  blurRadius: 15,
                  offset: Offset(0, 10)),
            ],
          ),
        ),

        //CAROUSEL IMAGE
        Container(
          alignment: Alignment.center,
          width: MediaQuery
              .of(context)
              .size
              .width * 0.75,
          height: MediaQuery
              .of(context)
              .size
              .height * 0.85,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding:EdgeInsets.only(),
          ),
        ),
      ],
    );
  }
}
