import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'user_info_state.dart';

///用户信息组件
Widget buildView(
    UserInfoState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: const EdgeInsets.all(4),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            key: Key('user_info'),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(6.0),
                child: Image(key: Key('head_image'), image: null),
              ),
              Column(
                children: <Widget>[
                  Text(
                    'name',
                    key: Key('user_info_name'),
                  ),
                  Text(
                    'id',
                    key: Key('user_info_id'),
                  ),
                  //定位
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on),
                      Text(
                        'location',
                        key: Key('user_info_location'),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.link),
                      Text(
                        'link',
                        key: Key('user_info_link'),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Flutter'),
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
