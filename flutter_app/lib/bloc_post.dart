import 'package:bloc/bloc.dart';
import 'bloc_event.dart';
import 'bloc_state.dart';
import 'jsonModelFeed.dart';

class PostBloc extends Bloc<PostEvent,PostState> {
  PostBloc(PostState PostInitialState) : super(PostInitialState);

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
  } ]
  };
  List<String> name=new List();
  List<String> profile=new List();
  List<String> post=new List();
  User feed;

  @override
  Stream<PostState> mapEventToState(PostEvent event) {
    if(event is FetchPostEvent){
      feed = User.fromJson(json);
      fetchten();
      PostLoadedState(name: name,profile: profile,post: post);
    }
  }
  fetchten(){
    for(int i=0;i<10;i++){

        name.add(feed.value[i].name);
        post.add(feed.value[i].post);
        profile.add(feed.value[i].profile);


    }
  }
}