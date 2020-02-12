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
          body: LayoutDemo()
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {

  List<Widget> _getListData(){
    var tempList = listData.map((value){
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.orange,
            width: 1
          )
        ),
        child: Column(
          children: <Widget>[
            Image.network(value["imageUrl"]),
            SizedBox(height: 15),
            Text(
              value["title"],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20
              ),
            )
          ],
        )
      );
    });

    return tempList.toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 20.0,   //水平子widget之间的距离
      mainAxisSpacing: 10.0,  //垂直子widger之间的距离
      crossAxisCount: 2,      //一行widget的数量
//      childAspectRatio: 1, //宽度与宽度之比
      children: this._getListData()
    );
  }

}