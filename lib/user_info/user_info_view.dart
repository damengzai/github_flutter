import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'user_info_state.dart';

///用户信息组件
Widget buildView(
    UserInfoState state, Dispatch dispatch, ViewService viewService) {
  return SafeArea(
    child: Container(
        margin: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          key: Key('user_info'),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(6.0),
              child: FadeInImage.assetNetwork(
                width: 120,
                height: 120,
                placeholder:
                    "https://avatars0.githubusercontent.com/u/4232933?s=400&v=4",
                image: state.avatar_url ??
                    "https://avatars0.githubusercontent.com/u/4232933?s=400&v=4",
              ),
            ),
            Text(
              state.name ?? 'name',
              key: Key('user_info_name'),
              textAlign: TextAlign.left,
            ),
            Text(
              state.id.toString() ?? 'id',
              key: Key('user_info_id'),
            ),
            //定位
            Row(
              children: <Widget>[
                Icon(Icons.location_on),
                Text(
                  state.location ?? 'location',
                  key: Key('user_info_location'),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.link),
                Text(
                  state.url ?? 'url',
                  key: Key('user_info_link'),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.email),
                Text(
                  state.email ?? 'email',
                  key: Key('email'),
                ),
              ],
            ),
            Text('Flutter'),
          ],
        )),
  );
}
