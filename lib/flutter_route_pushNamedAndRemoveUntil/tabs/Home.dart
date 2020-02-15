import 'package:flutter/material.dart';
import '../pages/Search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('跳转到商品页面'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            Navigator.pushNamed(context, '/product');
          },
        ),
      ],
    );
  }
}
