import 'package:fish_redux/fish_redux.dart';

import 'package:github_flutter/repo_list_item/repo_item_state.dart';

class RepoListState implements Cloneable<RepoListState>{
  List<RepoItemState> repoItems;
  @override
  RepoListState clone() {
    return RepoListState()
    ..repoItems = repoItems;
  }
}

RepoListState initState(Map<String, dynamic> args) {
  //网络请求
  return RepoListState();
}