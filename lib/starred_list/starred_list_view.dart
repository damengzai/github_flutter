import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'starred_list_state.dart';

Widget buildView(
    StarredListState state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter adapter = viewService.buildAdapter();
  return Scaffold(
    body: Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: adapter.itemBuilder,
              itemCount: adapter.itemCount,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            ),
          ),
        ],
      ),
    ),
  );
}
