import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/aboutpage.dart';
import 'package:flutterapp/bloc_post.dart';
import 'package:flutterapp/drawer.dart';
import 'package:flutterapp/main.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutterapp/profile.dart';
import 'package:flutterapp/jsonModelFeed.dart';

import 'dart:convert';

import 'bloc_event.dart';
import 'bloc_state.dart';

bool _enable=false;
//Future<String> _loadAStudentAsset() async {
//  return await rootBundle.loadString('assets/feed.json');
//}

//Future<Feed> loadFeed() async {
//  await wait(5);
//  String jsonString = await _loadAStudentAsset();
//  print(jsonString);
//  final jsonResponse = json.decode(jsonString);
//  return new Feed.fromJson(jsonResponse);
//}
//Future wait(int seconds) {
//  return new Future.delayed(Duration(seconds: seconds), () => {});
//}
var json={
  "Value":[
    {
      "profile":"https://data.whicdn.com/images/322027365/original.jpg?t=1541703413",
      "name":"Jhon",
      "post":"https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/16/53c293b7-3a90-4930-9139-b8d1e69443c6/pubg"
    },
    {
      "profile":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyhjCfyRLG2QhUXsdBxfJIVzxfY_XFOo76lg&usqp=CAU",
      "name":"Jhon wick",
      "post":"https://english.cdn.zeenews.com/sites/default/files/2020/12/13/904980-pubg-india-company.jpg"
    },
    {
      "profile":"https://wallpaperaccess.com/full/2213424.jpg",
      "name":"Freaky_boi",
      "post":"https://play-lh.googleusercontent.com/proxy/2tj1HTTkxfLUCHMYCMY7Ik_u9Dv-ctrQ7tteluo8MkL9bUzSFutbEcvkGroJxU6PTS84IHjfzCYjRsCflXcZ5k_CV2OAD2Al4i_fUCrb6cBVNvtB4TZhu97Z=w720-h405-rw"
    },
    {
      "profile":"https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "name":"James",
      "post":"https://s3b.cashify.in/gpro/uploads/2020/11/05170435/PUBG-Mobile-Free-UC.jpg"
    },
    {
      "profile":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU",
      "name":"Ramasamy",
      "post":"https://cdn.mos.cms.futurecdn.net/c3PMXyMnvvDG9Gw64z5Kb8.jpg"
    },
    {
      "profile":"https://static.toiimg.com/thumb/msid-73940213,width-800,height-600,resizemode-75,imgsize-477992,pt-32,y_pad-40/73940213.jpg",
      "name":"Ravi",
      "post":"https://cdn.videotapenews.com/wp-content/uploads/2020/11/image-10.jpg"
    },
    {
      "profile":"https://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/Profile-Picture-5.jpg",
      "name":"Friends_call_me_venom",
      "post":"https://www.eurekalert.org/multimedia/pub/web/218059_web.jpg"
    },
    {
      "profile":"https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
      "name":"Mr.Dark",
      "post":"https://i.redd.it/3xf02lpfmu131.jpg"
    },
    {
      "profile":"https://as2.ftcdn.net/jpg/02/35/50/89/500_F_235508902_03gewLthliinMOVJmE2JR0mvhPPrJJO9.jpg",
      "name":"Dads_little_princess",
      "post":"https://clashofclans.com/uploaded-images/_1440x847_crop_center-center_90/CoC_Blog_Announcement_20160429.jpg?mtime=20160429082539"
    },
    {
      "profile":"https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/xblezi1o6625itwk_1578310767.jpeg?tr=w-812,h-464",
      "name":"prince",
      "post":"https://nypost.com/wp-content/uploads/sites/2/2016/06/coc_titlescreen_2016.jpg?quality=80&strip=all"
    }
//    {
//      "profile":"https://data.whicdn.com/images/322027365/original.jpg?t=1541703413",
//      "name":"Jhon",
//      "post":"https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/16/53c293b7-3a90-4930-9139-b8d1e69443c6/pubg"
//    },
//    {
//      "profile":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyhjCfyRLG2QhUXsdBxfJIVzxfY_XFOo76lg&usqp=CAU",
//      "name":"Jhon wick",
//      "post":"https://english.cdn.zeenews.com/sites/default/files/2020/12/13/904980-pubg-india-company.jpg"
//    },
//    {
//      "profile":"https://wallpaperaccess.com/full/2213424.jpg",
//      "name":"Freaky_boi",
//      "post":"https://play-lh.googleusercontent.com/proxy/2tj1HTTkxfLUCHMYCMY7Ik_u9Dv-ctrQ7tteluo8MkL9bUzSFutbEcvkGroJxU6PTS84IHjfzCYjRsCflXcZ5k_CV2OAD2Al4i_fUCrb6cBVNvtB4TZhu97Z=w720-h405-rw"
//    },
//    {
//      "profile":"https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//      "name":"James",
//      "post":"https://s3b.cashify.in/gpro/uploads/2020/11/05170435/PUBG-Mobile-Free-UC.jpg"
//    },
//    {
//      "profile":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU",
//      "name":"Ramasamy",
//      "post":"https://cdn.mos.cms.futurecdn.net/c3PMXyMnvvDG9Gw64z5Kb8.jpg"
//    },
//    {
//      "profile":"https://static.toiimg.com/thumb/msid-73940213,width-800,height-600,resizemode-75,imgsize-477992,pt-32,y_pad-40/73940213.jpg",
//      "name":"Ravi",
//      "post":"https://cdn.videotapenews.com/wp-content/uploads/2020/11/image-10.jpg"
//    },
//    {
//      "profile":"https://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/Profile-Picture-5.jpg",
//      "name":"Friends_call_me_venom",
//      "post":"https://www.eurekalert.org/multimedia/pub/web/218059_web.jpg"
//    },
//    {
//      "profile":"https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
//      "name":"Mr.Dark",
//      "post":"https://i.redd.it/3xf02lpfmu131.jpg"
//    },
//    {
//      "profile":"https://as2.ftcdn.net/jpg/02/35/50/89/500_F_235508902_03gewLthliinMOVJmE2JR0mvhPPrJJO9.jpg",
//      "name":"Dads_little_princess",
//      "post":"https://clashofclans.com/uploaded-images/_1440x847_crop_center-center_90/CoC_Blog_Announcement_20160429.jpg?mtime=20160429082539"
//    },
//    {
//      "profile":"https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/xblezi1o6625itwk_1578310767.jpeg?tr=w-812,h-464",
//      "name":"prince",
//      "post":"https://nypost.com/wp-content/uploads/sites/2/2016/06/coc_titlescreen_2016.jpg?quality=80&strip=all"
//    },
//    {
//      "profile":"https://data.whicdn.com/images/322027365/original.jpg?t=1541703413",
//      "name":"Jhon",
//      "post":"https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/16/53c293b7-3a90-4930-9139-b8d1e69443c6/pubg"
//    },
//    {
//      "profile":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyhjCfyRLG2QhUXsdBxfJIVzxfY_XFOo76lg&usqp=CAU",
//      "name":"Jhon wick",
//      "post":"https://english.cdn.zeenews.com/sites/default/files/2020/12/13/904980-pubg-india-company.jpg"
//    },
//    {
//      "profile":"https://wallpaperaccess.com/full/2213424.jpg",
//      "name":"Freaky_boi",
//      "post":"https://play-lh.googleusercontent.com/proxy/2tj1HTTkxfLUCHMYCMY7Ik_u9Dv-ctrQ7tteluo8MkL9bUzSFutbEcvkGroJxU6PTS84IHjfzCYjRsCflXcZ5k_CV2OAD2Al4i_fUCrb6cBVNvtB4TZhu97Z=w720-h405-rw"
//    },
//    {
//      "profile":"https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//      "name":"James",
//      "post":"https://s3b.cashify.in/gpro/uploads/2020/11/05170435/PUBG-Mobile-Free-UC.jpg"
//    },
//    {
//      "profile":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU",
//      "name":"Ramasamy",
//      "post":"https://cdn.mos.cms.futurecdn.net/c3PMXyMnvvDG9Gw64z5Kb8.jpg"
//    },
//    {
//      "profile":"https://static.toiimg.com/thumb/msid-73940213,width-800,height-600,resizemode-75,imgsize-477992,pt-32,y_pad-40/73940213.jpg",
//      "name":"Ravi",
//      "post":"https://cdn.videotapenews.com/wp-content/uploads/2020/11/image-10.jpg"
//    },
//    {
//      "profile":"https://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/Profile-Picture-5.jpg",
//      "name":"Friends_call_me_venom",
//      "post":"https://www.eurekalert.org/multimedia/pub/web/218059_web.jpg"
//    },
//    {
//      "profile":"https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
//      "name":"Mr.Dark",
//      "post":"https://i.redd.it/3xf02lpfmu131.jpg"
//    },
//    {
//      "profile":"https://as2.ftcdn.net/jpg/02/35/50/89/500_F_235508902_03gewLthliinMOVJmE2JR0mvhPPrJJO9.jpg",
//      "name":"Dads_little_princess",
//      "post":"https://clashofclans.com/uploaded-images/_1440x847_crop_center-center_90/CoC_Blog_Announcement_20160429.jpg?mtime=20160429082539"
//    },
//    {
//      "profile":"https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/xblezi1o6625itwk_1578310767.jpeg?tr=w-812,h-464",
//      "name":"prince",
//      "post":"https://nypost.com/wp-content/uploads/sites/2/2016/06/coc_titlescreen_2016.jpg?quality=80&strip=all"
//    },
//    {
//      "profile":"https://data.whicdn.com/images/322027365/original.jpg?t=1541703413",
//      "name":"Jhon",
//      "post":"https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/16/53c293b7-3a90-4930-9139-b8d1e69443c6/pubg"
//    },
//    {
//      "profile":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyhjCfyRLG2QhUXsdBxfJIVzxfY_XFOo76lg&usqp=CAU",
//      "name":"Jhon wick",
//      "post":"https://english.cdn.zeenews.com/sites/default/files/2020/12/13/904980-pubg-india-company.jpg"
//    },
//    {
//      "profile":"https://wallpaperaccess.com/full/2213424.jpg",
//      "name":"Freaky_boi",
//      "post":"https://play-lh.googleusercontent.com/proxy/2tj1HTTkxfLUCHMYCMY7Ik_u9Dv-ctrQ7tteluo8MkL9bUzSFutbEcvkGroJxU6PTS84IHjfzCYjRsCflXcZ5k_CV2OAD2Al4i_fUCrb6cBVNvtB4TZhu97Z=w720-h405-rw"
//    },
//    {
//      "profile":"https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//      "name":"James",
//      "post":"https://s3b.cashify.in/gpro/uploads/2020/11/05170435/PUBG-Mobile-Free-UC.jpg"
//    },
//    {
//      "profile":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU",
//      "name":"Ramasamy",
//      "post":"https://cdn.mos.cms.futurecdn.net/c3PMXyMnvvDG9Gw64z5Kb8.jpg"
//    },
//    {
//      "profile":"https://static.toiimg.com/thumb/msid-73940213,width-800,height-600,resizemode-75,imgsize-477992,pt-32,y_pad-40/73940213.jpg",
//      "name":"Ravi",
//      "post":"https://cdn.videotapenews.com/wp-content/uploads/2020/11/image-10.jpg"
//    },
//    {
//      "profile":"https://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/Profile-Picture-5.jpg",
//      "name":"Friends_call_me_venom",
//      "post":"https://www.eurekalert.org/multimedia/pub/web/218059_web.jpg"
//    },
//    {
//      "profile":"https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
//      "name":"Mr.Dark",
//      "post":"https://i.redd.it/3xf02lpfmu131.jpg"
//    },
//    {
//      "profile":"https://as2.ftcdn.net/jpg/02/35/50/89/500_F_235508902_03gewLthliinMOVJmE2JR0mvhPPrJJO9.jpg",
//      "name":"Dads_little_princess",
//      "post":"https://clashofclans.com/uploaded-images/_1440x847_crop_center-center_90/CoC_Blog_Announcement_20160429.jpg?mtime=20160429082539"
//    },
//    {
//      "profile":"https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/xblezi1o6625itwk_1578310767.jpeg?tr=w-812,h-464",
//      "name":"prince",
//      "post":"https://nypost.com/wp-content/uploads/sites/2/2016/06/coc_titlescreen_2016.jpg?quality=80&strip=all"
//    },
//    {
//      "profile":"https://data.whicdn.com/images/322027365/original.jpg?t=1541703413",
//      "name":"Jhon",
//      "post":"https://img.redbull.com/images/c_fill,g_auto,w_1500,h_1000/q_auto,f_auto/redbullcom/2018/11/16/53c293b7-3a90-4930-9139-b8d1e69443c6/pubg"
//    },
//    {
//      "profile":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyhjCfyRLG2QhUXsdBxfJIVzxfY_XFOo76lg&usqp=CAU",
//      "name":"Jhon wick",
//      "post":"https://english.cdn.zeenews.com/sites/default/files/2020/12/13/904980-pubg-india-company.jpg"
//    },
//    {
//      "profile":"https://wallpaperaccess.com/full/2213424.jpg",
//      "name":"Freaky_boi",
//      "post":"https://play-lh.googleusercontent.com/proxy/2tj1HTTkxfLUCHMYCMY7Ik_u9Dv-ctrQ7tteluo8MkL9bUzSFutbEcvkGroJxU6PTS84IHjfzCYjRsCflXcZ5k_CV2OAD2Al4i_fUCrb6cBVNvtB4TZhu97Z=w720-h405-rw"
//    },
//    {
//      "profile":"https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
//      "name":"James",
//      "post":"https://s3b.cashify.in/gpro/uploads/2020/11/05170435/PUBG-Mobile-Free-UC.jpg"
//    },
//    {
//      "profile":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU",
//      "name":"Ramasamy",
//      "post":"https://cdn.mos.cms.futurecdn.net/c3PMXyMnvvDG9Gw64z5Kb8.jpg"
//    },
//    {
//      "profile":"https://static.toiimg.com/thumb/msid-73940213,width-800,height-600,resizemode-75,imgsize-477992,pt-32,y_pad-40/73940213.jpg",
//      "name":"Ravi",
//      "post":"https://cdn.videotapenews.com/wp-content/uploads/2020/11/image-10.jpg"
//    },
//    {
//      "profile":"https://www.goodmorningimagesdownload.com/wp-content/uploads/2020/05/Profile-Picture-5.jpg",
//      "name":"Friends_call_me_venom",
//      "post":"https://www.eurekalert.org/multimedia/pub/web/218059_web.jpg"
//    },
//    {
//      "profile":"https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
//      "name":"Mr.Dark",
//      "post":"https://i.redd.it/3xf02lpfmu131.jpg"
//    },
//    {
//      "profile":"https://as2.ftcdn.net/jpg/02/35/50/89/500_F_235508902_03gewLthliinMOVJmE2JR0mvhPPrJJO9.jpg",
//      "name":"Dads_little_princess",
//      "post":"https://clashofclans.com/uploaded-images/_1440x847_crop_center-center_90/CoC_Blog_Announcement_20160429.jpg?mtime=20160429082539"
//    },
//    {
//      "profile":"https://img.republicworld.com/republic-prod/stories/promolarge/xxhdpi/xblezi1o6625itwk_1578310767.jpeg?tr=w-812,h-464",
//      "name":"prince",
//      "post":"https://nypost.com/wp-content/uploads/sites/2/2016/06/coc_titlescreen_2016.jpg?quality=80&strip=all"
//    }
  ]
};

class Homepage  extends StatefulWidget {
  Homepage();
 @override
  _Homestate createState() => _Homestate();
}
  class _Homestate extends State<Homepage> {
  ScrollController _scrollController= new ScrollController();
  List<String> name=new List();
  List<String> profile=new List();
  List<String> post=new List();
  PostBloc postBloc;

//    User feed;
    int c=1;
    @override
    void initState() {
      super.initState();
//      feed = User.fromJson(json);
//      fetchten();
      postBloc=PostBloc(PostInitialState());
      postBloc.add(FetchPostEvent());
      _scrollController.addListener(() {
        print(_scrollController.position.pixels);
        if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){

          print("true");
          if(c<=5){
//          fetchten();
          }
          c++;
        }
      });
//      loadFeed().then((s)=> setState((){
//        feed= s;
//      })
//    );

    }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
      Container(
        child: BlocBuilder<PostBloc,PostState>(
          cubit: postBloc,
          builder: (context,state){
            if(state is PostInitialState){
              return buildLoading();
            }else if(state is PostLoadedState){
              return buildFeed(state.name, state.profile, post);
            }
          },
        )
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
      body:  tabs[_currentIndex],
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
  Widget buildLoading(){
      return Center(
        child: CircularProgressIndicator(),
      );
  }
  Widget buildFeed(List<String> name,List<String> profile,List<String> post){
      return ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics:ScrollPhysics(),
          itemCount:name.length.compareTo(0),
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
                          backgroundImage: NetworkImage(profile[index]),
                        ),
                        SizedBox(height: 15.0,width: 15.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(name[index],style: TextStyle(fontSize: 20,color: Colors.grey),),
                            Text('42 liked 29 photos',style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),

                          ],
                        ),
                        Expanded(child: Container()),
                        Text('4 hours ago',style: TextStyle(fontSize: 9,color: Colors.grey,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Image.network(post[index],fit:BoxFit.fill),
                ],
              ),
            );
          },
      );

  }
//  fetchten(){
//    for(int i=0;i<10;i++){
//      setState(() {
//        name.add(feed.value[i].name);
//        post.add(feed.value[i].post);
//        profile.add(feed.value[i].profile);
//      });
//
//    }
//  }
}