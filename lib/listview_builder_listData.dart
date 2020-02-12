import 'package:flutter/material.dart';
import 'res/listData.dart';

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

  Widget _getListData(context,index){
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["author"]),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //从数组提取数据到列表就是动态列表
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData
    );
  }

}