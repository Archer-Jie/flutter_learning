import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  Map arguments;

  ProductInfoPage({this.arguments});

  @override
  _ProductInfoPageState createState() =>
      _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  Map arguments;

  _ProductInfoPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${arguments['pid']}'),
        ),
        body: Container(
          child: Text('pid=${arguments['pid']}'),
        ));
  }
}
