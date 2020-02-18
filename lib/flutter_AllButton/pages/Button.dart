import 'package:flutter/material.dart';

class ButtonDemoPage extends StatefulWidget {
  @override
  _ButtonDemoPageState createState() => _ButtonDemoPageState();
}

class _ButtonDemoPageState extends State<ButtonDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){

            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: (){
                  print('普通按钮');
                },
              ),
              SizedBox(width: 10,),
              RaisedButton(
                child: Text('有颜色按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print('有颜色按钮');
                },
              ),
              SizedBox(width: 10,),
              RaisedButton(
                child: Text('有阴影按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10,
                onPressed: (){
                  print('有阴影按钮');
                },
              ),
              SizedBox(width: 10,),
              RaisedButton.icon(
                icon: Icon(Icons.album),
                label: Text('图标按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print("图标按钮");
                },
              )
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(         //在外包Container 可以设置按钮高度
                height: 50,
                width: 400,
                child: RaisedButton(
                  child: Text('宽度高度'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){
                    print('宽度高度');
                  },
                ),
              )
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  child: RaisedButton(
                    child: Text('自适应按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){
                      print('自适应按钮');
                    },
                  ),
                )
              )
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('圆角按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                onPressed: (){
                  print('圆角按钮');
                },
              ),
              SizedBox(width: 10,),
              Container(
                height: 80,
                child: RaisedButton(
                  child: Text('圆形按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.green, //点击和长按按钮时的水波纹
                  shape: CircleBorder(
//                      side: BorderSide(
//                          color: Colors.white
//                      )
                  ),
                  onPressed: (){
                    print('圆形按钮');
                  },
                ),
              ),
              SizedBox(width: 10,),
              FlatButton(
                child: Text('扁平按钮'),
                color: Colors.blue,
                textColor: Colors.yellow,
                onPressed: (){
                  print('扁平按钮');
                },
              ),
              SizedBox(width: 10,),
              OutlineButton(
                child: Text('按钮'),
                color: Colors.red,  //没效果
                textColor: Colors.blue,
                onPressed: (){
                },
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  child: OutlineButton(
                    child: Text('注册'),
                    color: Colors.red,  //没效果
                    textColor: Colors.blue,
                    onPressed: (){
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('登录'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){
                      print('登录');
                    },
                  ),
                  RaisedButton(
                    child: Text('注册'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){
                      print('注册');
                    },
                  ),
                  MyButton(text: '自定义按钮',height: 50,width: 80,onPress: (){
                    Navigator.of(context).pop();
                  },)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

//自定义按钮组件

class MyButton extends StatefulWidget {
  String text;
  var onPress;
  double width;
  double height;
  MyButton({this.text='',this.onPress=null,this.width=80,this.height=30});
  @override
  _MyButtonState createState() => _MyButtonState(this.text,this.onPress,this.width,this.height);
}

class _MyButtonState extends State<MyButton> {
  String text;
  var onPress;
  double width;
  double height;
  _MyButtonState(this.text ,this.onPress,this.width,this.height);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.onPress,
      ),
    );
  }
}
