import 'package:flutter/material.dart';
import '../res/listData.dart';
import './Tabs.dart';
import 'pages/Form.dart';
import 'pages/Search.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //home: Tabs(),
      initialRoute: '/tabs',
//      routes: {
//        '/form':(context)=>FormPage(),
//        '/search':(context)=>SearchPage(),
//      },
      onGenerateRoute: onGenerateRoute,
    );
  }
}
