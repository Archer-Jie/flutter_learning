import 'package:flutter/material.dart';
import 'res/listData.dart';

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
          body: LayoutDemo()
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 180,
                  color: Colors.black,
                  child: Text("你好Flutter",style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 180.0,
                    child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
                  )
              ),
              SizedBox(width: 10,),
              Expanded(
                  flex: 1,
                  child: Container(
                      height: 180.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child:Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover) ,
                          ),
                          SizedBox(height: 10,),
                          Expanded(
                            child: Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
                          )
                        ],
                      )
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
