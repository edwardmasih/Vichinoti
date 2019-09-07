import 'package:flutter/material.dart';

class Places {
  final String placeName;
  final String imagePath;
  final Color shadowColors;
  final String placeDescription;

  Places({this.placeName, this.imagePath, this.shadowColors, this.placeDescription});
}

List places = [
  Places(
    placeName: 'Mountains',
    imagePath: 'assets/images/pic(3).jpg',
    placeDescription: 'Something about Mountains',
    shadowColors: Color(0xffA37943),
  ),
  Places(
    placeName: 'Beaches',
    imagePath: 'assets/images/pic(2).jpg',
    placeDescription: 'Something about Beaches',
    shadowColors: Color(0xffcfa380),
  ),
  Places(
    placeName: 'Forest',
    imagePath: 'assets/images/pic(4).jpg',
    placeDescription: 'Something about Forests',
    shadowColors: Color(0xff1FA188),
  ),
  Places(
    placeName: 'Desert',
    imagePath: 'assets/images/pic(1).jpg',
    placeDescription: 'Something about Deserts',
    shadowColors: Color(0xff1FA188),
  ),
  Places(
    placeName: "Heaven",
    imagePath: "assets/images/pic(5).jpg",
    placeDescription: "Something about Heaven",
    shadowColors: Color(0xff1FA188),
  ),
];

//Color(0xffA37943)
//Color(0xffcfa380)
//Color(0xff1FA188)
