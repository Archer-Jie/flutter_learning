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
          body: HomePage()),
    );
  }
}
//自定义有状态组件
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Chip(
          label: Text('${countNum}'),
        ),
        RaisedButton(
          child: Text('你好'),
          onPressed: (){
            setState(() {
              this.countNum++;
            });
          },
        )
      ],
    );
  }
}


