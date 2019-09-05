//import 'package:flutter/material.dart';

class MainMenuItems {

  final String title;
  bool isSelected;

  MainMenuItems({this.title,this.isSelected});
}

List main_menu_items = [

  MainMenuItems(
    title: 'Home',
    isSelected: true
  ),

  MainMenuItems(
      title: 'Blog',
      isSelected: false
  ),

  MainMenuItems(
      title: 'Shop',
      isSelected: false
  ),

  MainMenuItems(
      title: 'Query Portal',
      isSelected: false
  ),

  MainMenuItems(
      title: 'Our Team',
      isSelected: false
  ),

];