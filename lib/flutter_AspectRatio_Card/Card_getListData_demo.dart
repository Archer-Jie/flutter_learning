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
      children: listData.map(
          (value){
            return Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    child: Image.network(
                      value["imageUrl"],
                      fit: BoxFit.cover,
                    ),
                    aspectRatio: 20 / 9,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(value["imageUrl"]),
                    ),
                    title: Text(value["title"]),
                    subtitle: Text(value["description"],overflow: TextOverflow.ellipsis,maxLines: 1,),
                  )
                ],
              ),
            );
          }
      ).toList()
    );
  }
}
