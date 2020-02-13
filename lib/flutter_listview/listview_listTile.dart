import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo'),),
        body: HomeContent()
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.album,color: Colors.blue,),
          title: Text('虎虎虎虎虎虎 呼呼呼呼',
            style: TextStyle(
              fontSize: 24
            ),),
          subtitle: Text("sssssssssss"),
          trailing: Icon(Icons.save_alt),
        ),ListTile(
          leading: Image.network("https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2405838008,3828920762&fm=26&gp=0.jpg"),
          title: Text('虎虎虎虎虎虎 呼呼呼呼',
            style: TextStyle(
                fontSize: 24
            ),),
          subtitle: Text("sssssssssss"),
        ),ListTile(
          leading: Icon(Icons.hdr_strong,color: Colors.blue,size: 50,),
          title: Text('虎虎虎虎虎虎 呼呼呼呼',
            style: TextStyle(
                fontSize: 24
            ),),
          subtitle: Text("sssssssssss"),
        ),ListTile(
          leading: Icon(Icons.home,color: Colors.blue,),
          title: Text('虎虎虎虎虎虎 呼呼呼呼',
            style: TextStyle(
                fontSize: 24
            ),),
          subtitle: Text("sssssssssss"),
        ),ListTile(
          leading: Icon(Icons.save_alt,color: Colors.blue,),
          title: Text('虎虎虎虎虎虎 呼呼呼呼',
            style: TextStyle(
                fontSize: 24
            ),),
          subtitle: Text("sssssssssss"),
        )
      ],
    );
  }
}