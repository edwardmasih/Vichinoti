import 'package:flutter/material.dart';

class Places {

  final String name;
  final String imagePath;
  final String placeDescription;
  final List<Color> colors;

  Places({this.name, this.imagePath, this.placeDescription, this.colors});

}

List places = [

  Places(
    name: "Mountains",
    imagePath: "assets/images/pic(3).jpg",
    placeDescription: "Something about Mountains",
    colors: [Colors.brown, Colors.brown[200]],
  ),
  Places(
    name: "Beaches",
    imagePath: "assets/images/pic(2).jpg",
    placeDescription: "Something about Beaches",
    colors: [Colors.brown, Colors.brown[200]],
  ),
  Places(
    name: "Forest",
    imagePath: "assets/images/pic(4).jpg",
    placeDescription: "Something about Forests",
    colors: [Colors.brown, Colors.brown[200]],
  ),
  Places(
    name: "Desert",
    imagePath: "assets/images/pic(1).jpg",
    placeDescription: "Something about Deserts",
    colors: [Colors.brown, Colors.brown[200]],
  ),
  Places(
    name: "Heaven",
    imagePath: "assets/images/pic(5).jpg",
    placeDescription: "Something about Heaven",
    colors: [Colors.brown, Colors.brown[200]],
  ),

];


//Color(0xffA37943)
//Color(0xffcfa380)
//Color(0xff1FA188)