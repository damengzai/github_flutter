import 'package:fish_redux/fish_redux.dart';
import 'package:github_flutter/repo_list_item/repo_item_state.dart';
import 'package:github_flutter/repo_list_item/repo_list_item_component.dart';

import 'repo_list_state.dart';

class RepoListAdapter extends DynamicFlowAdapter<RepoListState> {
  RepoListAdapter()
      : super(
          pool: <String, Component<Object>>{
            'repoItem': RepoItemComponent(),
          },
          connector: _RepoListConnector(),
        );
}

class _RepoListConnector extends ConnOp<RepoListState, List<ItemBean>> {
  @override
  List<ItemBean> get(RepoListState state) {
    if (state.repoItems?.isNotEmpty == true) {
      return state.repoItems
          .map<ItemBean>((RepoItemState data) => ItemBean('repoItem', data))
          .toList(growable: true);
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(RepoListState state, List<ItemBean> repos) {
    if (repos?.isNotEmpty == true) {
      state.repoItems = List<RepoItemState>.from(
          repos.map<RepoItemState>((ItemBean bean) => bean.data).toList());
    } else {
      state.repoItems = <RepoItemState>[];
    }
  }
}
