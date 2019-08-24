import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homepageState();
  }
}

class _homepageState extends State<homepage> {
  void _logoutUser() {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Vichinoti: Home"),
      ),
      body: new Container(),
      bottomNavigationBar: new BottomAppBar(
        color: Colors.blue,
        child: new Container(
          margin: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.local_airport),
                iconSize: 40,
                color: Colors.white,
                onPressed: _logoutUser,
              ),
              new IconButton(
                icon: new Icon(Icons.local_see),
                iconSize: 40,
                color: Colors.white,
                onPressed: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
