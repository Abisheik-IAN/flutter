import 'package:flutter/material.dart';
import 'package:flutterapp/aboutpage.dart';
import 'package:flutterapp/drawer.dart';
import 'package:flutterapp/main.dart';
import 'package:flutterapp/profile.dart';

bool _enable=false;

class Homepage extends StatefulWidget {

  @override
  _Homestate createState()=> _Homestate();

  }
  class _Homestate extends State<Homepage>{
    int _currentIndex=0;
    IconData _appBarIcon=null;
    bool _onClick(){
      setState(() {

        _enable=true;
        print(_enable);

      });
      return _enable;
    }






  @override
  Widget build(BuildContext context) {

    final tabs=[
      Center(child: Text('Welcome what can i help you?')),
      Center(child: Text('Coming soon')),
      Profile()

    ];
    final app =["Home","Settings","My Profile"];

    if(_currentIndex==2){
      _appBarIcon= Icons.edit  ;
    }
    else{
      _appBarIcon=null;
    }
    return Scaffold(
      resizeToAvoidBottomInset : false,

      appBar: AppBar(

        title: Text(app[_currentIndex]),
        backgroundColor: Color.fromRGBO(69, 104, 220,3.0),
        actions: <Widget>[
          IconButton(icon: Icon(_appBarIcon), onPressed: _onClick)
        ]
      ),
      drawer:DrawerSlide(),
      body: SingleChildScrollView(child: tabs[_currentIndex]),
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