import 'package:flutter/material.dart';
import 'package:flutterapp/homepage.dart';
import 'package:flutterapp/profile.dart';

class ProfileDetails extends StatefulWidget {
  final String Name;
  final String Surname;
  final String Email;
  final String Phno;
  final String Pass;

  const ProfileDetails(
      {Key key, this.Name, this.Surname, this.Email, this.Pass, this.Phno})
      :super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfileDetails();
}
class _ProfileDetails extends State<ProfileDetails>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("User Details"),backgroundColor: Color.fromRGBO(69, 104, 220,3.0)),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(40.0, 115.0, 40.0, 0.0),
                child: Center(
                  child: Text('Name: ${widget.Name}'),
                ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
              child: Center(
                child: Text('Surname: ${widget.Surname}'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
              child: Center(
                child: Text('Email: ${widget.Email}'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
              child: Center(
                child: Text('Phno: ${widget.Phno}'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
              child: Center(
                child: Text('Password: ${widget.Pass}'),
              ),
            ),
            RaisedButton(
              onPressed:() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage() ));
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
                    'confirm',
                    style: TextStyle(fontSize: 20)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }



}