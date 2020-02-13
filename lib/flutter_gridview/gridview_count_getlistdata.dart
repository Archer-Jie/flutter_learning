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
          body: LayoutDemo()
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {

  List<Widget> _getListData(){
    List<Widget> list = List();

    for(var i=0; i<20; i++){
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          "这是第$i条数据",
          style: TextStyle(color: Colors.blue,fontSize: 20),
        ),
        color: Colors.pink,
        //height: 400,//设置高度没有反应
      ));
    }

    return list;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 20.0,   //水平子widget之间的距离
      mainAxisSpacing: 20.0,  //垂直子widger之间的距离
      crossAxisCount: 2,      //一行widget的数量
      childAspectRatio: 0.7, //宽度与宽度之比
      children: this._getListData()
    );
  }

}