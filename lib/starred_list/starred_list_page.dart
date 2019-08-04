import 'package:fish_redux/fish_redux.dart';
import 'starred_list_adapter.dart';

import 'starred_list_effect.dart';
import 'starred_list_reducer.dart';
import 'starred_list_state.dart';
import 'starred_list_view.dart';

class StarredListPage extends Page<StarredListState, Map<String, dynamic>> {
  StarredListPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<StarredListState>(
            adapter: StarredListAdapter(),
          ),
        );
}
