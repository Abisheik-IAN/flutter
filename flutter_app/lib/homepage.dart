import 'package:flutter/material.dart';
import 'package:flutterapp/aboutpage.dart';
import 'package:flutterapp/drawer.dart';
import 'package:flutterapp/main.dart';
import 'package:flutterapp/profile.dart';

import 'dart:convert';

bool _enable=false;

class Homepage extends StatefulWidget {



  @override
  _Homestate createState()=> _Homestate();

  }
  class _Homestate extends State<Homepage>{

//    List profile=[
//      'https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/xblezi1o6625itwk_1578310767.jpeg?tr=w-812,h-464',
//      'https://as2.ftcdn.net/jpg/02/35/50/89/500_F_235508902_03gewLthliinMOVJmE2JR0mvhPPrJJO9.jpg',
//      'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg',
//      'https://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/Profile-Picture-5.jpg',
//      'https://static.toiimg.com/thumb/msid-73940213,width-800,height-600,resizemode-75,imgsize-477992,pt-32,y_pad-40/73940213.jpg',
//      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU',
//      'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//      'https://wallpaperaccess.com/full/2213424.jpg',
//      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyhjCfyRLG2QhUXsdBxfJIVzxfY_XFOo76lg&usqp=CAU',
//      'https://data.whicdn.com/images/322027365/original.jpg?t=1541703413',
//      'https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/xblezi1o6625itwk_1578310767.jpeg?tr=w-812,h-464',
//      'https://as2.ftcdn.net/jpg/02/35/50/89/500_F_235508902_03gewLthliinMOVJmE2JR0mvhPPrJJO9.jpg',
//      'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg',
//      'https://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/Profile-Picture-5.jpg',
//      'https://static.toiimg.com/thumb/msid-73940213,width-800,height-600,resizemode-75,imgsize-477992,pt-32,y_pad-40/73940213.jpg',
//      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU',
//      'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//      'https://wallpaperaccess.com/full/2213424.jpg',
//      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyhjCfyRLG2QhUXsdBxfJIVzxfY_XFOo76lg&usqp=CAU',
//      'https://data.whicdn.com/images/322027365/original.jpg?t=1541703413',
//      'https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/xblezi1o6625itwk_1578310767.jpeg?tr=w-812,h-464',
//      'https://as2.ftcdn.net/jpg/02/35/50/89/500_F_235508902_03gewLthliinMOVJmE2JR0mvhPPrJJO9.jpg',
//      'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg',
//      'https://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/Profile-Picture-5.jpg',
//      'https://static.toiimg.com/thumb/msid-73940213,width-800,height-600,resizemode-75,imgsize-477992,pt-32,y_pad-40/73940213.jpg',
//      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU',
//      'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//      'https://wallpaperaccess.com/full/2213424.jpg',
//      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyhjCfyRLG2QhUXsdBxfJIVzxfY_XFOo76lg&usqp=CAU',
//      'https://data.whicdn.com/images/322027365/original.jpg?t=1541703413',
//      'https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/xblezi1o6625itwk_1578310767.jpeg?tr=w-812,h-464',
//      'https://as2.ftcdn.net/jpg/02/35/50/89/500_F_235508902_03gewLthliinMOVJmE2JR0mvhPPrJJO9.jpg',
//      'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg',
//      'https://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/Profile-Picture-5.jpg',
//      'https://static.toiimg.com/thumb/msid-73940213,width-800,height-600,resizemode-75,imgsize-477992,pt-32,y_pad-40/73940213.jpg',
//      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU',
//      'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//      'https://wallpaperaccess.com/full/2213424.jpg',
//      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyhjCfyRLG2QhUXsdBxfJIVzxfY_XFOo76lg&usqp=CAU',
//      'https://data.whicdn.com/images/322027365/original.jpg?t=1541703413',
//      'https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/xblezi1o6625itwk_1578310767.jpeg?tr=w-812,h-464',
//      'https://as2.ftcdn.net/jpg/02/35/50/89/500_F_235508902_03gewLthliinMOVJmE2JR0mvhPPrJJO9.jpg',
//      'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg',
//      'https://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/Profile-Picture-5.jpg',
//      'https://static.toiimg.com/thumb/msid-73940213,width-800,height-600,resizemode-75,imgsize-477992,pt-32,y_pad-40/73940213.jpg',
//      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU',
//      'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
//      'https://wallpaperaccess.com/full/2213424.jpg',
//      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyhjCfyRLG2QhUXsdBxfJIVzxfY_XFOo76lg&usqp=CAU',
//      'https://data.whicdn.com/images/322027365/original.jpg?t=1541703413'];
//    List name=[
//      'Jhon','Jhon wick','James','Ramasamy','Ravi','Freaky_boi','Friends_call_me_venom','Mr.Dark','Dads_little_princess','prince',
//      'Jhon','Jhon wick','James','Ramasamy','Ravi','Freaky_boi','Friends_call_me_venom','Mr.Dark','Dads_little_princess','prince',
//      'Jhon','Jhon wick','James','Ramasamy','Ravi','Freaky_boi','Friends_call_me_venom','Mr.Dark','Dads_little_princess','prince',
//      'Jhon','Jhon wick','James','Ramasamy','Ravi','Freaky_boi','Friends_call_me_venom','Mr.Dark','Dads_little_princess','prince',
//      'Jhon','Jhon wick','James','Ramasamy','Ravi','Freaky_boi','Friends_call_me_venom','Mr.Dark','Dads_little_princess','prince'
//    ];
//
//    List post=[
//      'https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/16/53c293b7-3a90-4930-9139-b8d1e69443c6/pubg',
//      'https://english.cdn.zeenews.com/sites/default/files/2020/12/13/904980-pubg-india-company.jpg',
//      'https://play-lh.googleusercontent.com/proxy/2tj1HTTkxfLUCHMYCMY7Ik_u9Dv-ctrQ7tteluo8MkL9bUzSFutbEcvkGroJxU6PTS84IHjfzCYjRsCflXcZ5k_CV2OAD2Al4i_fUCrb6cBVNvtB4TZhu97Z=w720-h405-rw',
//      'https://s3b.cashify.in/gpro/uploads/2020/11/05170435/PUBG-Mobile-Free-UC.jpg',
//      'https://cdn.mos.cms.futurecdn.net/c3PMXyMnvvDG9Gw64z5Kb8.jpg',
//      'https://cdn.videotapenews.com/wp-content/uploads/2020/11/image-10.jpg',
//      'https://www.eurekalert.org/multimedia/pub/web/218059_web.jpg',
//      'https://i.redd.it/3xf02lpfmu131.jpg',
//      'https://clashofclans.com/uploaded-images/_1440x847_crop_center-center_90/CoC_Blog_Announcement_20160429.jpg?mtime=20160429082539',
//      'https://nypost.com/wp-content/uploads/sites/2/2016/06/coc_titlescreen_2016.jpg?quality=80&strip=all',
//      'https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/16/53c293b7-3a90-4930-9139-b8d1e69443c6/pubg',
//      'https://english.cdn.zeenews.com/sites/default/files/2020/12/13/904980-pubg-india-company.jpg',
//      'https://play-lh.googleusercontent.com/proxy/2tj1HTTkxfLUCHMYCMY7Ik_u9Dv-ctrQ7tteluo8MkL9bUzSFutbEcvkGroJxU6PTS84IHjfzCYjRsCflXcZ5k_CV2OAD2Al4i_fUCrb6cBVNvtB4TZhu97Z=w720-h405-rw',
//      'https://s3b.cashify.in/gpro/uploads/2020/11/05170435/PUBG-Mobile-Free-UC.jpg',
//      'https://cdn.mos.cms.futurecdn.net/c3PMXyMnvvDG9Gw64z5Kb8.jpg',
//      'https://cdn.videotapenews.com/wp-content/uploads/2020/11/image-10.jpg',
//      'https://www.eurekalert.org/multimedia/pub/web/218059_web.jpg',
//      'https://i.redd.it/3xf02lpfmu131.jpg',
//      'https://clashofclans.com/uploaded-images/_1440x847_crop_center-center_90/CoC_Blog_Announcement_20160429.jpg?mtime=20160429082539',
//      'https://nypost.com/wp-content/uploads/sites/2/2016/06/coc_titlescreen_2016.jpg?quality=80&strip=all',
//      'https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/16/53c293b7-3a90-4930-9139-b8d1e69443c6/pubg',
//      'https://english.cdn.zeenews.com/sites/default/files/2020/12/13/904980-pubg-india-company.jpg',
//      'https://play-lh.googleusercontent.com/proxy/2tj1HTTkxfLUCHMYCMY7Ik_u9Dv-ctrQ7tteluo8MkL9bUzSFutbEcvkGroJxU6PTS84IHjfzCYjRsCflXcZ5k_CV2OAD2Al4i_fUCrb6cBVNvtB4TZhu97Z=w720-h405-rw',
//      'https://s3b.cashify.in/gpro/uploads/2020/11/05170435/PUBG-Mobile-Free-UC.jpg',
//      'https://cdn.mos.cms.futurecdn.net/c3PMXyMnvvDG9Gw64z5Kb8.jpg',
//      'https://cdn.videotapenews.com/wp-content/uploads/2020/11/image-10.jpg',
//      'https://www.eurekalert.org/multimedia/pub/web/218059_web.jpg',
//      'https://i.redd.it/3xf02lpfmu131.jpg',
//      'https://clashofclans.com/uploaded-images/_1440x847_crop_center-center_90/CoC_Blog_Announcement_20160429.jpg?mtime=20160429082539',
//      'https://nypost.com/wp-content/uploads/sites/2/2016/06/coc_titlescreen_2016.jpg?quality=80&strip=all',
//      'https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/16/53c293b7-3a90-4930-9139-b8d1e69443c6/pubg',
//      'https://english.cdn.zeenews.com/sites/default/files/2020/12/13/904980-pubg-india-company.jpg',
//      'https://play-lh.googleusercontent.com/proxy/2tj1HTTkxfLUCHMYCMY7Ik_u9Dv-ctrQ7tteluo8MkL9bUzSFutbEcvkGroJxU6PTS84IHjfzCYjRsCflXcZ5k_CV2OAD2Al4i_fUCrb6cBVNvtB4TZhu97Z=w720-h405-rw',
//      'https://s3b.cashify.in/gpro/uploads/2020/11/05170435/PUBG-Mobile-Free-UC.jpg',
//      'https://cdn.mos.cms.futurecdn.net/c3PMXyMnvvDG9Gw64z5Kb8.jpg',
//      'https://cdn.videotapenews.com/wp-content/uploads/2020/11/image-10.jpg',
//      'https://www.eurekalert.org/multimedia/pub/web/218059_web.jpg',
//      'https://i.redd.it/3xf02lpfmu131.jpg',
//      'https://clashofclans.com/uploaded-images/_1440x847_crop_center-center_90/CoC_Blog_Announcement_20160429.jpg?mtime=20160429082539',
//      'https://nypost.com/wp-content/uploads/sites/2/2016/06/coc_titlescreen_2016.jpg?quality=80&strip=all',
//      'https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/16/53c293b7-3a90-4930-9139-b8d1e69443c6/pubg',
//      'https://english.cdn.zeenews.com/sites/default/files/2020/12/13/904980-pubg-india-company.jpg',
//      'https://play-lh.googleusercontent.com/proxy/2tj1HTTkxfLUCHMYCMY7Ik_u9Dv-ctrQ7tteluo8MkL9bUzSFutbEcvkGroJxU6PTS84IHjfzCYjRsCflXcZ5k_CV2OAD2Al4i_fUCrb6cBVNvtB4TZhu97Z=w720-h405-rw',
//      'https://s3b.cashify.in/gpro/uploads/2020/11/05170435/PUBG-Mobile-Free-UC.jpg',
//      'https://cdn.mos.cms.futurecdn.net/c3PMXyMnvvDG9Gw64z5Kb8.jpg',
//      'https://cdn.videotapenews.com/wp-content/uploads/2020/11/image-10.jpg',
//      'https://www.eurekalert.org/multimedia/pub/web/218059_web.jpg',
//      'https://i.redd.it/3xf02lpfmu131.jpg',
//      'https://clashofclans.com/uploaded-images/_1440x847_crop_center-center_90/CoC_Blog_Announcement_20160429.jpg?mtime=20160429082539',
//      'https://nypost.com/wp-content/uploads/sites/2/2016/06/coc_titlescreen_2016.jpg?quality=80&strip=all',
//      'https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/16/53c293b7-3a90-4930-9139-b8d1e69443c6/pubg',
//      'https://english.cdn.zeenews.com/sites/default/files/2020/12/13/904980-pubg-india-company.jpg',
//      'https://play-lh.googleusercontent.com/proxy/2tj1HTTkxfLUCHMYCMY7Ik_u9Dv-ctrQ7tteluo8MkL9bUzSFutbEcvkGroJxU6PTS84IHjfzCYjRsCflXcZ5k_CV2OAD2Al4i_fUCrb6cBVNvtB4TZhu97Z=w720-h405-rw',
//      'https://s3b.cashify.in/gpro/uploads/2020/11/05170435/PUBG-Mobile-Free-UC.jpg',
//      'https://cdn.mos.cms.futurecdn.net/c3PMXyMnvvDG9Gw64z5Kb8.jpg',
//      'https://cdn.videotapenews.com/wp-content/uploads/2020/11/image-10.jpg',
//      'https://www.eurekalert.org/multimedia/pub/web/218059_web.jpg',
//      'https://i.redd.it/3xf02lpfmu131.jpg',
//      'https://clashofclans.com/uploaded-images/_1440x847_crop_center-center_90/CoC_Blog_Announcement_20160429.jpg?mtime=20160429082539',
//      'https://nypost.com/wp-content/uploads/sites/2/2016/06/coc_titlescreen_2016.jpg?quality=80&strip=all'
//    ];
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
      FutureBuilder(builder: (context,snapshot){
        var showData=json.decode(snapshot.data.toString());
        return ListView.builder(

            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics:ScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 8.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: NetworkImage(showData[index]['profile']),
                          ),
                          SizedBox(height: 15.0,width: 15.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(showData[index]['name'],style: TextStyle(fontSize: 20,color: Colors.grey),),
                              Text('42 liked 29 photos',style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),

                            ],
                          ),
                          Expanded(child: Container()),
                          Text('4 hours ago',style: TextStyle(fontSize: 9,color: Colors.grey,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Image.network(showData[index]['post'],fit:BoxFit.fill),
                  ],
                ),
              );
            },itemCount:49
        );
      },future: DefaultAssetBundle.of(context).loadString("asserts/feed.json"),
      ),
//      Center(child: Text('Coming soon')),
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