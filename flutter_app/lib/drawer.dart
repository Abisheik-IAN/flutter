import 'package:flutter/material.dart';

import 'aboutpage.dart';
import 'main.dart';

class DrawerSlide extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(

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
    );
  }

}