import 'redux_event.dart';
import 'redux_state.dart';
import 'homepage.dart';
import 'jsonModelFeed.dart';

AppState appStateReducer(AppState state, action){
  return AppState
    (post: itemReducer(state.post, action));
}

List<User>itemReducer(List<User> state, action)
{
  if(action is Addaction){
    return []..addAll(state);
    //..add(User.fromJson(dummyjson));

  }
  return state;
}