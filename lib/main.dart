import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'repo_list/repo_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _MyHomePage();
  }
}

class _MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(pages: <String, Page<Object, dynamic>>{
      'repo_list': RepoListPage(),
    }),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'git',
      home: routes.buildPage('repo_list', null),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<Object>(builder: (BuildContext context) {
          return routes.buildPage(settings.name, settings.arguments);
        });
      },
    );
  }
}
