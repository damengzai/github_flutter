import 'package:fish_redux/fish_redux.dart';

import 'package:github_flutter/starred_list_item/starred_item_state.dart';
import 'package:github_flutter/starred_list_item/starred_item_owner_state.dart';

class StarredListState implements Cloneable<StarredListState> {
  List<StarredItemState> starredList = [];

  @override
  StarredListState clone() {
    return StarredListState()..starredList = starredList;
  }

  static List<StarredItemState> fromData(List<dynamic> starredListData) {
    List<StarredItemState> starredItems = [];
    if (starredListData == null) {
      return starredItems;
    }
    starredListData.forEach((value) {
      starredItems.add(
        StarredItemState(
          id: value['id'],
          description: value['description'],
          url: value['url'],
          name: value['name'],
          owner: StarredItemOwnerState(
            avatar_url: value['owner']['avatar_url'],
          ),
        ),
      );
    });
    return starredItems;
  }
}

StarredListState initState(Map<String, dynamic> args) {
  return StarredListState();
}
