import 'package:flutter/material.dart';
import 'package:flutterapp/aboutpage.dart';
import 'package:flutterapp/main.dart';
 bool _enable=false;
class Homepage extends StatefulWidget {

  @override
  _Homestate createState()=> _Homestate();

  }
  class _Homestate extends State<Homepage>{
    int _currentIndex=0;
    IconData _appBarIcon=null;


    final tabs=[
      Center(child: Text('Welcome what can i help you?')),
      Center(child: Text('Coming soon')),
      Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(70.0, 30.0, 80.0, 15.0),
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage:NetworkImage('https://www.pinkvilla.com/files/styles/contentpreview/public/suriya_1.jpg?itok=PAyhlkot') ,
                      radius: 60,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
                  child:Center(
                    child: TextField(
                      enabled:_enable,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Name",
                          hintStyle: TextStyle(color: Colors.grey[400])
                      ),
                    ),
                  )
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
                    child:Center(
                      child: TextField(
                        enabled: _enable,
                        decoration: InputDecoration(
//                          enabled: ,
                            border: InputBorder.none,
                            hintText: "Surname",
                            hintStyle: TextStyle(color: Colors.grey[400])
                        ),
                      ),
                    )
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
                    child:Center(
                      child: TextField(
                        enabled: _enable,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.grey[400])
                        ),
                      ),
                    )
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
                    child:Center(
                      child: TextField(
                        enabled: _enable,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone Number",
                            hintStyle: TextStyle(color: Colors.grey[400])
                        ),
                      ),
                    )
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
                    child:Center(
                      child: TextField(
                        enabled: _enable,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey[400])
                        ),
                      ),
                    )
                ),
                RaisedButton(
                  onPressed: () {

                  },
                  
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(69, 104, 220,3.0),
                            Color.fromRGBO(69, 104, 220,0.5),

                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50.0))
                    ),
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 20)
                    ),
                  ),
                )
              ]
          )
      )
    ];
    final app =["Home","Settings","My Profile"];


  @override
  Widget build(BuildContext context) {
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
          IconButton(icon: Icon(_appBarIcon), onPressed: (){
            setState(() {
              _enable=true;
            });
          })
        ]
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