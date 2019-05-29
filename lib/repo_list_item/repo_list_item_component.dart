import 'package:fish_redux/fish_redux.dart';

import 'repo_item_state.dart';
import 'repo_item_view.dart';

class RepoItemComponent extends Component<RepoItemState> {
  RepoItemComponent() :super(view: buildView);
}