import 'package:flutter/material.dart';
import '../../Tabs_with_floatingaction_button.dart';

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
              Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context) => new Tabs(index: 1,)),//返回到指定页面
                  (route) => route == null
              );
            },
          )
        ],
      ),
    );
  }
}
