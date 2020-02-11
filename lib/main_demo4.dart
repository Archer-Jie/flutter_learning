import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomeContent()
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text('我是一个文本我是一个文本我是一个文本我是一个文本',
          textAlign: TextAlign.center,
          overflow: TextOverflow.fade,
          textScaleFactor: 2,
          maxLines: 5,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.yellow,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5.0
          ),),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.yellow,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5)
          ),
        ),
        padding: EdgeInsets.all(20),
//        padding: EdgeInsets.fromLTRB(10, 30, 5, 0),
        margin: EdgeInsets.all(20),
//        transform: Matrix4.translationValues(100, 0, 0),
//        transform: Matrix4.rotationZ(0.5),
        alignment: Alignment.topCenter,

      )
    );
  }
}