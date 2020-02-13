import 'package:flutter/material.dart';
import '../res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Flutter Demo'),),
          body: HomeContent()
      ),
    );
  }
}

class HomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
          Text("这是一个文本"),
          Text("这是一个文本"),
          Text("这是一个文本"),
          Text("这是一个文本"),
          Text("这是一个文本"),
      ],
    );
  }

}