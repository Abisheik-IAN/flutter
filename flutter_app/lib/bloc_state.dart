import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'jsonModelFeed.dart';

abstract class PostState extends Equatable{}

class PostInitialState extends PostState{
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class PostLoadedState extends PostState{
  List<String> name=new List();
  List<String> profile=new List();
  List<String> post=new List();
  PostLoadedState({@required this.name,this.profile, this.post});
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
