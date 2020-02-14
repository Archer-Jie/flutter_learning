import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('搜索页面'),
        ),
        body: Text('搜索页面内容区'),
      ),
    );
  }
}
