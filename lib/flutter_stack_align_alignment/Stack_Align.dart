import 'package:flutter/material.dart';
import '../res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Demo'),
          ),
          body: LayoutDemo()),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.white,
                )),
            Align(
                alignment: Alignment.bottomLeft,
                child: Icon(
                  Icons.gamepad,
                  size: 30,
                  color: Colors.indigo,
                )),
            Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.ondemand_video,
                  size: 70,
                  color: Colors.lightGreenAccent,
                )),
            Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.nature_people,
                  size: 50,
                  color: Colors.lime,
                )),
            Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.featured_video,
                  size: 60,
                  color: Colors.purple,
                )),
          ],
        ),
      ),
    );
  }
}
