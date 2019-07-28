import 'package:fish_redux/fish_redux.dart';
import 'user_info_view.dart';
import 'user_info_state.dart';
import 'user_info_reducer.dart';
import 'user_info_effect.dart';

class UserInfoPage extends Page<UserInfoState, Map<String, dynamic>> {
  UserInfoPage()
      : super(
          effect: buildEffect(),
          initState: initState,
          reducer: builderReducer(),
          view: buildView,
        );
}
