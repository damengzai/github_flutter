import 'package:fish_redux/fish_redux.dart';
import 'package:github_flutter/repo_list/repo_list_adapter.dart';

import 'repo_list_effect.dart';
import 'repo_list_reducer.dart';
import 'repo_list_state.dart';
import 'repo_list_view.dart';

class RepoListPage extends Page<RepoListState, Map<String, dynamic>> {
  RepoListPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<RepoListState>(
              adapter: RepoListAdapter(),
            ));
}
