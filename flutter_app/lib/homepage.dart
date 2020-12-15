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
//      Container(
//        child: ListView(
//          children: <Widget>[
//            Container(
//              child: Row(
//                children: <Widget>[
//                  CircleAvatar(backgroundImage: NetworkImage('https://www.pinkvilla.com/files/styles/contentpreview/public/suriya_1.jpg?itok=PAyhlkot'),
//                  radius: 50,),
////                  Column(
////                    children: <Widget>[
////                      Text('Abisheik',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
////                      Text('54 liked photos',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 8),)
////                    ],
////                  ),
//                  Text('4 hours ago',style: TextStyle(fontSize: 6,color: Colors.grey),)
//                ],
//              ),
//            )
//          ],
//        ),
//      ),
      Center(child: Text('Coming soon')),
      Center(child: Text('Coming soon')),
      Profile()

    ];
    final app =["Feeds","Settings","My Profile"];

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