class User{
  List<Feed> value;

  User({this.value});

  User.fromJson(Map<String,dynamic> json){
    if(json['Value'] !=null){
      value=new List<Feed>();
      json['Value'].forEach((v){
        value.add(Feed.fromJson(v));
      });
    }
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    if(this.value != null){
      data['Value']=this.value.map((v) => v.toJson()).toList();
    }
    return data;
  }
}



class Feed {
  String profile;
  String name;
  String post;

  Feed({this.profile, this.name, this.post});

  Feed.fromJson(Map<String, dynamic> json) {

        profile = json['profile'];
        name = json['name'];
        post = json['post'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profile'] = this.profile;
    data['name'] = this.name;
    data['post'] = this.post;
    return data;
  }
}
