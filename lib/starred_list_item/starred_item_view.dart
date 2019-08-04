import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'starred_item_state.dart';

Widget buildView(
    StarredItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
      padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              //头像
              Column(
                children: [
                  Image.network(
                    state.owner.avatar_url,
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                  Text(
                    state.name,
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Container(
                width: 1,
                height: 100,
                color: Colors.black,
                margin: EdgeInsets.fromLTRB(4, 0, 6, 0),
              ),
              //简介
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      state.url,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                    ),
                    Text(
                      state.description,
                      maxLines: 3,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            height: 2,
            color: Colors.black,
          )
        ],
      ));
}
