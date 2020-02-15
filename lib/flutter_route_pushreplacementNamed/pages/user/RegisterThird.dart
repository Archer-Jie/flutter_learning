import 'package:flutter/material.dart';

class RegisterThirdPage extends StatefulWidget {
  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步，完成注册"),
      ),
      body: Column(
        children: <Widget>[
          Text('输入密码完成注册'),
          RaisedButton(
            child: Text('完成'),
            onPressed: (){
              Navigator.of(context).pop(); //利用替换路由回到根路由
            },
          )
        ],
      ),
    );
  }
}
