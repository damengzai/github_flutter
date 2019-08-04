import 'package:fish_redux/fish_redux.dart';
import 'package:github_flutter/starred_list_item/starred_item_state.dart';

enum StarredListAction { initStarredList }

class StarredListActionCreator {
  static Action initStarredListAction(List<StarredItemState> starredItems) {
    return Action(StarredListAction.initStarredList, payload: starredItems);
  }
}
