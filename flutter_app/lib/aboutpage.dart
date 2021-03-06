import 'package:flutter/material.dart';

import 'main.dart';


class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
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
      body: Center(
        child: Text("Coming Soon"),
      ),
    );
  }

}