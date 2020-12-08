import 'package:flutter/material.dart';
import 'package:flutterapp/aboutpage.dart';
import 'package:flutterapp/main.dart';

class Homepage extends StatefulWidget {

  @override
  _Homestate createState()=> _Homestate();

  }
  class _Homestate extends State<Homepage>{
    int _currentIndex=0;
    final tabs=[
      Center(child: Text('Home')),
      Center(child: Text('Settings')),
      Center(child: Text('My profile'))
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Color.fromRGBO(69, 104, 220,3.0),
      ),
      drawer: Drawer(

        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(69, 104, 220,3.0),
                      Color.fromRGBO(69, 104, 220,0.5),

                    ],
                  ),
              ),
                accountName: Text('Abisheik_cool'),
                accountEmail: Text(' abisheganellaiyappan.I@optisolbusiness.com'),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://www.pinkvilla.com/files/styles/contentpreview/public/suriya_1.jpg?itok=PAyhlkot')
                  ,)
              ),
            ListTile(
              title: Text('About Page'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>About()));
             },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>MyApp()));
              },
            ),
          ],
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
//        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Color.fromRGBO(69, 104, 220,3.0)),
          BottomNavigationBarItem(
              icon:Icon(Icons.settings),
              title: Text('Settings'),
              backgroundColor: Color.fromRGBO(69, 104, 220,3.0)),
          BottomNavigationBarItem(
              icon:Icon(Icons.supervised_user_circle),
              title: Text('Profile'),
              backgroundColor: Color.fromRGBO(69, 104, 220,3.0))
        ],
        onTap: (index) {
          setState(() {
            _currentIndex=index;
          });
        },
      ),
    );
  }


}