import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';

import 'package:github_flutter/repo_list_item/repo_item_state.dart';

class RepoListState implements Cloneable<RepoListState> {
  List<RepoItemState> repoItems = [];

  @override
  RepoListState clone() {
    return RepoListState()..repoItems = repoItems;
  }

 static List<RepoItemState> fromJSON(List<dynamic> repoListData) {
    List<RepoItemState> repoItems = [];
    if (repoListData == null) {
      return repoItems;
    }
    repoListData.forEach((value) {
      repoItems.add(RepoItemState(
          name: value["name"], stargazers_count: value["stargazers_count"]));
    });
    return repoItems;
  }
}

RepoListState initState(Map<String, dynamic> args) {
  //网络请求
  return RepoListState();
}

