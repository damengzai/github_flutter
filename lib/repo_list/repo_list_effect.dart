import 'package:fish_redux/fish_redux.dart';
import 'package:github_flutter/repo_list_item/repo_item_state.dart';

import 'repo_list_action.dart';
import 'repo_list_state.dart';

Effect<RepoListState> buildEffect() {
  return combineEffects(<Object, Effect<RepoListState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<RepoListState> ctx) {
  final List<RepoItemState> initRepoItems = <RepoItemState>[
    RepoItemState(name: 'name',stargazers_count: 3),
  ];
  ctx.dispatch(RepoListActionCreator.initRepoListAction(initRepoItems));
}
