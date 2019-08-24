import 'package:flutter/material.dart';
import 'login.dart';
import 'homepage.dart';

void main() => runApp(Vichinoti());

class Vichinoti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Vichinoti",
      theme: new ThemeData(primarySwatch: Colors.lightBlue),
      home: LoginRegisterPage(),
      //home: homepage(),
    );
  }
}
