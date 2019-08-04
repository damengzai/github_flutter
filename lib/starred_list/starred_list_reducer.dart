import 'package:fish_redux/fish_redux.dart';
import 'package:github_flutter/starred_list_item/starred_item_state.dart';

import 'starred_list_action.dart';
import 'starred_list_state.dart';

Reducer<StarredListState> buildReducer() {
  return asReducer(
    <Object, Reducer<StarredListState>>{
      StarredListAction.initStarredList: _initStarredListReducer,
    },
  );
}

StarredListState _initStarredListReducer(
    StarredListState state, Action action) {
  final List<StarredItemState> starredList = action.payload ?? <StarredItemState>[];
  final StarredListState newState = state.clone();
  newState.starredList = starredList;
  return newState;
}
