import 'package:flutter/cupertino.dart';
import 'homepage.dart';
import 'jsonModelFeed.dart';

import 'package:flutter/foundation.dart';
User post=User.fromJson(json);

class AppState{
  //User details;
  final List<User>post;

  AppState({
    @required this.post,
  });
  AppState.initialState(): post = List.unmodifiable(<User>[]);

}