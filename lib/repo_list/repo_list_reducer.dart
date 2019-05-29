import 'package:fish_redux/fish_redux.dart';
import 'package:github_flutter/repo_list_item/repo_item_state.dart';

import 'repo_list_action.dart';
import 'repo_list_state.dart';

Reducer<RepoListState> buildReducer() {
  return asReducer(
    <Object, Reducer<RepoListState>>{
      RepoListAction.initRepoList: _initRepoListReducer
    },
  );
}

RepoListState _initRepoListReducer(RepoListState state, Action action) {
  final List<RepoItemState> repoItems = action.payload ?? <RepoItemState>[];
  final RepoListState newState = state.clone();
  newState.repoItems = repoItems;
  return newState;
}
