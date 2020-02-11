import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

//自定义组件
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
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