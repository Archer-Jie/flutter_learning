import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

//自定义组件
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text('Flutter Demo')
        ),
        body: HomeContent(),

      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
    ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Text("你好Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.yellow
          )
      ),
    );
  }

}