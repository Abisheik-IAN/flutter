import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/bloc_post.dart';
import 'package:flutterapp/homepage.dart';

import 'bloc_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus.unfocus();
        }
      },
     child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home:BlocProvider(
        create: (context)=>PostBloc(PostInitialState()),
        child: MyHomePage(),
      )
    ),
    );
  }
}

class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asserts/loginbg.jpg'),
            fit: BoxFit.fill
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(

              padding: EdgeInsets.only(top: 110.0),
              child: Text("Welcome to",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Color.fromRGBO(69, 104, 220,3.0)),              ),
            ),
            Container(
//              padding: EdgeInsets.fromLTRB(5.0, 1.0, 0.0, 0.0),
              child: Text("Login",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.normal,color: Color.fromRGBO(69, 104, 220,3.0)),              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(75.0, 80.0, 80.0, 0.0),
              child:TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey[400])
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(75.0, 5.0, 80.0, 0.0),
              child:TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey[400])
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(settings:RouteSettings(name: "/login"),builder: (context)=> Homepage() ));
              },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(69, 104, 220,3.0),
                        Color.fromRGBO(176, 106, 179,1.0),

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
          ],
        )
      )

      );


  }
  
}