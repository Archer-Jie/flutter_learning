import 'package:flutter/material.dart';
import '../res/listData.dart';
import './Tabs_with_floatingaction_button.dart';
import 'pages/Form.dart';
import 'pages/Search.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去掉debug标志
      //home: Tabs(),
      initialRoute: '/checkbox',
//      routes: {
//        '/form':(context)=>FormPage(),
//        '/search':(context)=>SearchPage(),
//      },
      onGenerateRoute: onGenerateRoute,
    );
  }
}
