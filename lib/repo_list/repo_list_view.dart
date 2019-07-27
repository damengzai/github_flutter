import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'repo_list_state.dart';

Widget buildView(
    RepoListState state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter adapter = viewService.buildAdapter();
  return Scaffold(
    body: Container(
      child: Column(
        children: <Widget>[
//          viewService.buildComponent('repo'),
          Expanded(
            child: ListView.builder(
              itemBuilder: adapter.itemBuilder,
              itemCount: adapter.itemCount,
            ),
          ),
        ],
      ),
    ),
  );
}
