import 'dart:collection';

import 'package:fish_redux/fish_redux.dart';
import 'package:github_flutter/http/net_util.dart';

import 'user_info_state.dart';
import 'user_info_action.dart';
import '../constants/constants.dart';
Effect<UserInfoState> buildEffect() {
  return combineEffects(<Object, Effect<UserInfoState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<UserInfoState> ctx) async {
  println('----user_info_init');
  Map<String, dynamic> result = await NetUtil.get(overview_url);
  ctx.dispatch(UserInfoActionCreator.initUserInfoAction(UserInfoState.fromMap(result)));
}