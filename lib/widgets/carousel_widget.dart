import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:vichinoti/widgets/rating.dart';
import 'package:vichinoti/model/text_syles.dart';

class CarouselWidget extends StatelessWidget {
  final String widgetTitle;
  final String imagePath;
  final Color shadowColor;

  CarouselWidget(this.widgetTitle, this.imagePath, this.shadowColor);

  @override
  Widget build(BuildContext context) {
    return Material(//for better hero transition
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          //CREATING SHADOW OF CAROUSEL SLIDER
          Container(
            width: MediaQuery.of(context).size.width * 0.80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: shadowColor.withOpacity(0.8),
                    blurRadius: 10,
                    offset: Offset(0, 11)),
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
              top: 5,
              bottom: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
                right: 100,
                left: 100,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    widgetTitle,
                    style: AppTheme().heading,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Rating(
                    initialRating: 0,
                    size: 25,
                    color: Colors.white,
                    onRated: (int value) {},
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: Container(
              width: 90,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black54.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white.withOpacity(0.8),
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
