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
          body: LayoutDemo()
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        IconContainer(Icons.save_alt, color: Colors.yellow,),
        Expanded(//自适应
          flex: 1,
          child:IconContainer(Icons.battery_alert, color: Colors.indigoAccent,),
        ),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 32;
  Color color = Colors.red;
  IconData icon;

  IconContainer(this.icon, {this.size, this.color}) {

  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: 100.0,
        height: 100.0,
        color: this.color,
        child: Center(
          child: Icon(Icons.home, size: this.size, color: Colors.white,),
        )
    );
  }

}