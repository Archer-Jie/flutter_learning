import 'package:flutter/material.dart';

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
    return Container(
      height: 180.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              width: 180,
              height: 180,
              color: Colors.blue
          ), Container(
              width: 180,
              height: 180,
              color: Colors.deepOrange
          ), Container(
              width: 180,
              height: 180,
              color: Colors.yellow
          ), Container(
              width: 180,
              height: 180,
              color: Colors.pink,
              child: ListView(
                children: <Widget>[
                  Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1980134287,2722802828&fm=26&gp=0.jpg"),
                  Text('我是一个文本'),
                  Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1980134287,2722802828&fm=26&gp=0.jpg"),
                  Text('我是一个文本'),
                  Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1980134287,2722802828&fm=26&gp=0.jpg"),
                  Text('我是一个文本')
                ],
              ),
          ), Container(
              width: 180,
              height: 180,
              color: Colors.deepPurple
          ), Container(
              width: 180,
              height: 180,
              color: Colors.lime
          ),
        ],
      ),
    );
  }
}