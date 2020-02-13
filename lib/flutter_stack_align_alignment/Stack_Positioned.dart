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
            Positioned(
                left: 250,
                top: 100,
                child: Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.white,
                )),
            Positioned(
                left: 200,
                top: 80,
                child: Icon(
                  Icons.gamepad,
                  size: 30,
                  color: Colors.indigo,
                )),
            Positioned(
                left: 100,
                top: 160,
                child: Icon(
                  Icons.ondemand_video,
                  size: 70,
                  color: Colors.lightGreenAccent,
                )),
            Positioned(
                left: 80,
                top: 200,
                child: Icon(
                  Icons.nature_people,
                  size: 50,
                  color: Colors.lime,
                )),
          Positioned(
            left: 20,
            top: 180,
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
