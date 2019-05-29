import 'package:fish_redux/fish_redux.dart';
import 'user_info_view.dart';
import 'user_info_state.dart';

class UserInfoComponent extends Component<UserInfoState> {
  UserInfoComponent() : super(view: buildView);
}
