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
  List list = List();
  HomeContent(){
    for(var i=0; i<20; i++){
      this.list.add("我是第$i条数据");
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //从数组提取数据到列表就是动态列表
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (context,index){
        return ListTile(
          title: Text(this.list[index]),
        );
      },
    );
  }

  //自定义方法
  List<Widget> _getData() {
    var tempList = listData.map((value){
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });
    print(tempList);
    return tempList.toList();
  }

}