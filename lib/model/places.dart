import 'package:flutter/material.dart';

class Places {
  final String name;
  final String imagePath;
  final Color shadowColors;
  final String placeDescription;

  Places({this.name, this.imagePath, this.shadowColors, this.placeDescription});
}

List places = [
  Places(
    name: "Mountains",
    imagePath: "assets/images/pic(3).jpg",
    placeDescription: "Something about Mountains",
    shadowColors: Colors.brown,
  ),
  Places(
    name: "Beaches",
    imagePath: "assets/images/pic(2).jpg",
    placeDescription: "Something about Beaches",
    shadowColors: Colors.brown,
  ),
  Places(
    name: "Forest",
    imagePath: "assets/images/pic(4).jpg",
    placeDescription: "Something about Forests",
    shadowColors: Colors.brown,
  ),
  Places(
    name: "Desert",
    imagePath: "assets/images/pic(1).jpg",
    placeDescription: "Something about Deserts",
    shadowColors: Colors.brown,
  ),
  Places(
    name: "Heaven",
    imagePath: "assets/images/pic(5).jpg",
    placeDescription: "Something about Heaven",
    shadowColors: Colors.brown,
  ),
];

//Color(0xffA37943)
//Color(0xffcfa380)
//Color(0xff1FA188)
