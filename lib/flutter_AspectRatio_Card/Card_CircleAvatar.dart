import 'package:flutter/material.dart';
import '../res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Demo'),
          ),
          body: LayoutDemo()),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover,
                ),
                aspectRatio: 20 / 9,
              ),
              ListTile(
                leading: CircleAvatar(
                  //专门处理头像的类
                  backgroundImage: NetworkImage(
                      'https://www.itying.com/images/flutter/1.png'),
                ),
                /* ClipOval(
                  child: Image.network(
                    'https://www.itying.com/images/flutter/1.png',
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),*/
                title: Text('xxxxx'),
                subtitle: Text('sssssss'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover,
                ),
                aspectRatio: 20 / 9,
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    'https://www.itying.com/images/flutter/1.png',
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
                title: Text('xxxxx'),
                subtitle: Text('sssssss'),
              )
            ],
          ),
        )
      ],
    );
  }
}
