import 'package:fish_redux/fish_redux.dart';

import 'starred_item_state.dart';
import 'starred_item_view.dart';

class StarredItemComponent extends Component<StarredItemState> {
  StarredItemComponent() :super(view: buildView);
}