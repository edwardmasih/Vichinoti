import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CarouselWidget extends StatelessWidget {
  final String widgetTitle;
  final String imagePath;
  final Color shadowColor;

  CarouselWidget(this.widgetTitle, this.imagePath, this.shadowColor);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        //CREATING SHADOW OF CAROUSEL SLIDER
        Container(
          width: MediaQuery.of(context).size.width * 0.80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: shadowColor.withOpacity(0.8),
                  blurRadius: 10,
                  offset: Offset(0, 8)),
            ],
          ),
        ),

        //CAROUSEL IMAGE
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.85,
          margin: EdgeInsets.only(
            left: 5,
            right: 5,
            top: 0,
            bottom: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(),
          ),
        ),
      ],
    );
  }
}
