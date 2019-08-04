import 'package:fish_redux/fish_redux.dart';
import 'package:github_flutter/http/net_util.dart';

import 'starred_list_action.dart';
import 'starred_list_state.dart';
import '../constants/constants.dart';

Effect<StarredListState> buildEffect() {
  return combineEffects(
      <Object, Effect<StarredListState>>{Lifecycle.initState: _init});
}

void _init(Action action, Context<StarredListState> ctx) async {
  print('----starred effect init');
  List<dynamic> result = await NetUtil.get(starts_url);
  ctx.dispatch(StarredListActionCreator.initStarredListAction(
      StarredListState.fromData(result)));
}
