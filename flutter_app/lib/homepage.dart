import 'package:flutter/material.dart';
import 'package:flutterapp/aboutpage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: Text("Home Page")
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
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
            )
          ],
        ),
      ),
    );
  }
}