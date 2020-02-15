import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
//        backgroundColor: Colors.red,
        title: Text("flutterdemo"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('search');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              print('settings');
            },
          )
        ],
      ),
      body: Text('1111'),
    );
  }
}
