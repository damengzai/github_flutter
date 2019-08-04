import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'repo_item_state.dart';

Widget buildView(
    RepoItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.library_books),
            Text(
              state.name,
              style: TextStyle(inherit: true, fontSize: 16),
            ),
            Row(
              children: [
                Text(
                  state.stargazers_count.toString(),
                ),
                Icon(Icons.star),
              ],
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          height: 2,
        )
      ],
    ),
  );
}
