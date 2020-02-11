import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
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

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Container(
          child: Text('我是一个标题',textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
            ),),
          height: 100,
          padding: EdgeInsets.all(10),
        ),

        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1980134287,2722802828&fm=26&gp=0.jpg"),
        Container(
          child: Text('我是一个标题',textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
            ),),
          height: 100,
          padding: EdgeInsets.all(10),
        ),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1980134287,2722802828&fm=26&gp=0.jpg"),
        Container(
          child: Text('我是一个标题',textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
            ),),
          height: 100,
          padding: EdgeInsets.all(10),
        ),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1980134287,2722802828&fm=26&gp=0.jpg"),
        Container(
          child: Text('我是一个标题',textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
            ),),
          height: 100,
          padding: EdgeInsets.all(10),
        ),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1980134287,2722802828&fm=26&gp=0.jpg"),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1980134287,2722802828&fm=26&gp=0.jpg"),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1980134287,2722802828&fm=26&gp=0.jpg"),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1980134287,2722802828&fm=26&gp=0.jpg"),
        Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1980134287,2722802828&fm=26&gp=0.jpg")
      ],
    );
  }
}