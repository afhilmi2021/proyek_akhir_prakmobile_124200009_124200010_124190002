import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../screens/start.dart';
import '../screens/finish.dart';
import '../screens/profile.dart';


class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => new _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [new Start(), new Home(), new Profile(), new Finish()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.message), title: Text('Pesan Masuk')),
              ListTile(
                  leading: Icon(Icons.account_circle), title: Text('Profil')),
              ListTile(
                  leading: Icon(Icons.settings), title: Text('Pengaturan')),
            ],
          ),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.login,
                color: Colors.orange,
              ),
              icon: new Icon(
                Icons.login,
                color: Colors.grey,
              ),
              title: new Text('Start',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 0
                          ? Colors.orange
                          : Colors.grey)),
            ),

            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.home,
                color: Colors.orange,
              ),
              icon: new Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: new Text('Home',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 1
                          ? Colors.orange
                          : Colors.grey)),
            ),

            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.people,
                color: Colors.orange,
              ),
              icon: new Icon(
                Icons.people,
                color: Colors.grey,
              ),
              title: new Text('Member',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 2
                          ? Colors.orange
                          : Colors.grey)),
            ),

            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.logout,
                color: Colors.orange,
              ),
              icon: new Icon(
                Icons.logout,
                color: Colors.grey,
              ),
              title: new Text('Finish',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 3
                          ? Colors.orange
                          : Colors.grey)),
            ),
          ],
        ));
  }
}
