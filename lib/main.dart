import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(Vichinoti());

class Vichinoti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Vichinoti & Co.",
      theme: new ThemeData(
        fontFamily: 'JosefinSans',
        canvasColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
