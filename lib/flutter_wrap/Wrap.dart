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
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      padding: EdgeInsets.all(10),
      child: Wrap(
        runAlignment: WrapAlignment.start,  //垂直方向对齐方式
        spacing: 10,      // 水平方向间距
        runSpacing: 10,  //垂直方向间距
//        direction: Axis.horizontal,
//      alignment: WrapAlignment.spaceEvenly, //水平方向对齐方式
        children: <Widget>[
          MyButton("第1集"),
          MyButton("第2集第2集"),
          MyButton("第3集"),
          MyButton("第4集"),
          MyButton("第5集"),
          MyButton("第6集"),
          MyButton("第7集第7集"),
          MyButton("第8集"),
          MyButton("第9集"),
          MyButton("第10集第10集"),
          MyButton("第11集"),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget{

  final String text;
  const MyButton(this.text,{Key key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },
    );
  }

}