import 'package:fish_redux/fish_redux.dart';

import 'user_info_state.dart';

enum UserInfoAction { initUserInfo }

class UserInfoActionCreator {
  static Action initUserInfoAction(UserInfoState userInfoState){
    return Action(UserInfoAction.initUserInfo, payload: userInfoState);
  }
}