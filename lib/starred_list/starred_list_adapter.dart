import 'package:fish_redux/fish_redux.dart';
import 'package:github_flutter/starred_list_item/starred_item_state.dart';
import 'package:github_flutter/starred_list_item/starred_item_component.dart';

import 'starred_list_state.dart';

class StarredListAdapter extends DynamicFlowAdapter<StarredListState> {
  StarredListAdapter() : super(
      pool: <String, Component<Object>>{
        'starItem': StarredItemComponent(),
      },
      connector: _StarredListConnector(),
  );
}

class _StarredListConnector extends ConnOp<StarredListState, List<ItemBean>> {
  @override
  List<ItemBean> get(StarredListState state) {
    if (state.starredList?.isNotEmpty == true) {
      return state.starredList
          .map<ItemBean>((StarredItemState data) => ItemBean('starItem', data))
          .toList(growable: true);
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(StarredListState state, List<ItemBean> starredItems) {
    if (starredItems?.isNotEmpty == true) {
      state.starredList = List<StarredItemState>.from(starredItems
          .map<StarredItemState>((ItemBean bean) => bean.data)
          .toList());
    } else {
      state.starredList = <StarredItemState>[];
    }
  }
}
