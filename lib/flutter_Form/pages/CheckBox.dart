import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {

  var flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: this.flag,
                onChanged: (v){
                  setState(() {
                    this.flag = v;
                  });
                },
                activeColor: Colors.red,
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(this.flag ? '选中':'未选中')
            ],
          ),
          SizedBox(height: 10,),
          CheckboxListTile(
            value: this.flag,
            onChanged: (v){
              setState(() {
                this.flag = v;
              });
            },
            title: Text('标题'),
            subtitle: Text('这是二级标题'),
          ),
          Divider(),
          CheckboxListTile(
            value: this.flag,
            onChanged: (v){
              setState(() {
                this.flag = v;
              });
            },
            title: Text('标题'),
            subtitle: Text('这是二级标题'),
            secondary: Icon(Icons.help),
          )
        ],
      ),
    );
  }
}
