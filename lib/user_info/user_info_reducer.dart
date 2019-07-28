import 'package:fish_redux/fish_redux.dart';

import 'user_info_action.dart';
import 'user_info_state.dart';

Reducer<UserInfoState> builderReducer() {
  return asReducer(<Object, Reducer<UserInfoState>>{
    UserInfoAction.initUserInfo: _initUserInfoReducer
  });
}

UserInfoState _initUserInfoReducer(UserInfoState state, Action action) {
  final UserInfoState update = action.payload ?? <String, String>{};
  final UserInfoState newState = state.clone();
  newState.avatar_url = update.avatar_url ?? newState.avatar_url;
  newState.name = update.name ?? newState.name;
  newState.id = update.id ?? newState.id;
  newState.location = update.location?? newState.location;
  newState.url = update.url ?? newState.url;
  newState.email = update.email ?? newState.email;
  return newState;
}
