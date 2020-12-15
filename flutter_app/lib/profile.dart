import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/profileView.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Profile();
}
class _Profile extends State<Profile>{

  PickedFile _image;
  final ImagePicker _picker = ImagePicker();

  final _name=TextEditingController();
  final _surname=TextEditingController();
  final _email=TextEditingController();
  final _phno=TextEditingController();
  final _pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
              child:Stack(
                children:[
              Container(
                height: 130,
                width: 130,
//                padding: EdgeInsets.fromLTRB(70.0, 30.0, 80.0, 15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage:_image== null ?NetworkImage('https://www.pinkvilla.com/files/styles/contentpreview/public/suriya_1.jpg?itok=PAyhlkot'):FileImage(File(_image.path)) ,
                    radius: 60,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: Theme.of(context).scaffoldBackgroundColor
                      ),
                      color: Color.fromRGBO(69, 104, 220,3.0)
                    ),
                    child:Center(child: IconButton(icon:Icon(Icons.edit), color: Colors.white,onPressed: showBottomSheet)),
                  )
              ),]),),
              Container(
                  padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 0.0),
                  child:Center(
                    child: TextField(
//                      enabled:_onClick(),
                    controller: _name,
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
//                      enabled: _enable,
                    controller: _surname,
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
//                      readOnly:  !(_enable),
//                        enabled: _enable,
                    controller: _email,
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
//                      enabled: _enable,
                    controller: _phno,
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
//                      enabled: _enable,
                    controller: _pass,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey[400])
                      ),
                    ),
                  )
              ),

              RaisedButton(
                onPressed:(){ saveData(_name.text,_surname.text,_email.text,_phno.text,_pass.text);},

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


    );
  }

  saveData(String name, String surname, String email, String phno, String pass) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
    prefs.setString('surname',  surname);
    prefs.setString('email', email);
    prefs.setString('phno',  phno);
    prefs.setString('pass', pass);

    String Name=prefs.getString("name");
    String Surname=prefs.getString("surname");
    String Email=prefs.getString("email");
    String Phno=prefs.getString("phno");
    String Pass=prefs.getString("pass");

    if(_name=="" && _surname=="" && _email=="" && _phno=="" && _pass==""){
      Fluttertoast.showToast(msg: 'Please fill all the details....',toastLength: Toast.LENGTH_SHORT);
    }
    else{
      Fluttertoast.showToast(msg:"yaahooo" +Name+ "your record submitted sucessfully!!!",toastLength: Toast.LENGTH_SHORT);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>
      ProfileDetails(Name:Name,Surname:Surname,Email:Email,Phno:Phno,Pass:Pass),),
      );
    }
  }
  void showBottomSheet()=>showModalBottomSheet(
      context: context,
      builder: (context)=>Column(
        mainAxisSize:MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera'),
            onTap: (){profilePhoto(ImageSource.camera);},
          ),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('Gallery'),
            onTap:(){ profilePhoto(ImageSource.gallery);},
          )
        ],

      )
  );

  void profilePhoto(ImageSource source) async{
    final pickedFile =await _picker.getImage(source: source,);
    setState(() {
      _image = pickedFile;
    });

  }



}