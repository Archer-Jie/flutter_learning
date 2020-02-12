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
    //从数组提取数据到列表就是动态列表
    return ListView(
      children: this._getData()
    );
  }


  //自定义方法
  List<Widget> _getData(){

    List<Widget> list = List();

    for(var i=0; i<20; i++){
      list.add(ListTile(
        title: Text("我是${i+1}列表"),
      ));
    }
    return list;
  }
}