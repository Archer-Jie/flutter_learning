import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {

  var _username = TextEditingController();
  var _password;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: '请输入用户名',
              ),
              controller: this._username,
              onChanged: (a){
                setState(() {
                  this._username.text = a;
                });
              },
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '请输入密码',
              ),
              onChanged: (value){
                setState(() {
                  this._password = value;
                });
              },
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text('登录'),
                onPressed: (){
                  print(this._username.text);
                  print(this._password);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
                hintText: "单行文本框，加边框",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
                hintText: "多行文本框，加边框",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "密码框，加边框",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '用户名',
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '密码',
//                labelStyle: TextStyle(), //与文本一样修改样式
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: '请输入用户名',
            ),
          ),
        ],
      ),
    );
  }
}

