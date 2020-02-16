import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  int index;
  Tabs({this.index=0});
  @override
  _TabsState createState() => _TabsState(index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  _TabsState(index){
    this._currentIndex = index;
  }
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 36,
        fixedColor: Colors.red,
        currentIndex: this._currentIndex,
        onTap: (int index){
          setState(() {  //改变状态
            this._currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,  //配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child:  DrawerHeader(
                    child: Text('你好flutter'),
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      image: DecorationImage(
                        image: NetworkImage('https://www.itying.com/images/flutter/2.png'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.info),
              ),
              title: Text('我的空间'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('用户中心'),
            ),Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
            ),Divider(),
          ],
        )
      ),
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      child: IconButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                          Navigator.pushNamed(context, '/user');
                        },
                        icon: Image.network('https://www.itying.com/images/flutter/3.png'),
                      ),
                      backgroundImage: NetworkImage('https://www.itying.com/images/flutter/3.png'),
                    ),
                    accountName: Text('Archer'),
                    accountEmail: Text('saber.li233@gmail.com'),
                    decoration:BoxDecoration(
                        color: Theme.of(context).accentColor,
                        image: DecorationImage(
                            image: NetworkImage('https://www.itying.com/images/flutter/2.png'),
                            fit: BoxFit.cover
                        )
                    ),
//                    otherAccountsPictures: <Widget>[
//                      Image.network('https://www.itying.com/images/flutter/5.png')
//                    ],
                  )
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.info),
              ),
              title: Text('我的空间'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('用户中心'),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/user');
              },
            ),Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
            ),Divider(),
          ],
        )
      ),
    );
  }
}