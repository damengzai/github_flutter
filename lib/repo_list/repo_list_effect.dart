import 'package:fish_redux/fish_redux.dart';
import 'package:github_flutter/repo_list_item/repo_item_state.dart';

import 'repo_list_action.dart';
import 'repo_list_state.dart';

Effect<RepoListState> buildEffect() {
  return combineEffects(<Object, Effect<RepoListState>>{
    Lifecycle.initState: _init,
    Lifecycle.build: _build,
    Lifecycle.appear: _appear,
    Lifecycle.deactivate: _deactivate,
    Lifecycle.disappear: _disappear,
    Lifecycle.didUpdateWidget: _didUpdateWidget
  });
}

void _init(Action action, Context<RepoListState> ctx) {
  final List<RepoItemState> initRepoItems = <RepoItemState>[
    RepoItemState(name: 'name',stargazers_count: 3),
  ];
  ctx.dispatch(RepoListActionCreator.initRepoListAction(initRepoItems));
}

void _build(Action action, Context<RepoListState> ctx){
  println('----build');
}

void _appear(Action action, Context<RepoListState> ctx){
  println('----appear');
}

void _deactivate(Action action, Context<RepoListState> ctx){
  println('----deactivate');
}

void _disappear(Action action, Context<RepoListState> ctx){
  println('----disappear');
}
void _didUpdateWidget(Action action, Context<RepoListState> ctx){
  println('----didUpdateWidget');
}

