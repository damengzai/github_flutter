import 'package:fish_redux/fish_redux.dart';
import 'package:github_flutter/repo_list_item/repo_item_state.dart';

enum RepoListAction { initRepoList }

class RepoListActionCreator {
  static Action initRepoListAction(List<RepoItemState> repoItems) {
    return Action(RepoListAction.initRepoList, payload: repoItems);
  }
}