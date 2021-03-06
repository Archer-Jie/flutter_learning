import 'package:flutter/material.dart';
import '../pages/Search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('跳转到搜索界面'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: (){
              Navigator.pushNamed(context, '/search',arguments: {
                "id":123
              });
            },
          ),
          RaisedButton(
            child: Text('跳转到商品页面'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: (){
              Navigator.pushNamed(context, '/product');
            },
          ),
          RaisedButton(
            child: Text('跳转到appBar'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: (){
              Navigator.pushNamed(context, '/appBarDemo');
            },
          ),
          RaisedButton(
            child: Text('跳转到TabController定义顶部Tab切换'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: (){
              Navigator.pushNamed(context, '/tabbarcontroller');
            },
          ),
          RaisedButton(
            child: Text('跳转到Button演示界面'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: (){
              Navigator.pushNamed(context, '/button');
            },
          ),
          RaisedButton(
            child: Text('表单演示页面'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: (){
              Navigator.pushNamed(context, '/textfield');
            },
          ),
          RaisedButton(
            child: Text('CheckBox'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: (){
              Navigator.pushNamed(context, '/checkbox');
            },
          ),
          RaisedButton(
            child: Text('RadioDemo'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: (){
              Navigator.pushNamed(context, '/radiodemo');
            },
          ),
        ],
      ),
    );
  }
}
