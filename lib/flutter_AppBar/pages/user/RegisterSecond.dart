import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二步-验证码"),
      ),
      body: Column(
        children: <Widget>[
          Text('请输入验证码，点击进入下一步'),
          RaisedButton(
            child: Text('下一步'),
            onPressed: (){
              Navigator.pushNamed(context,'/registerThird');
            },
          )
        ],
      ),
    );
  }
}
