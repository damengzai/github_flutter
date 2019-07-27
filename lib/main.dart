import 'package:flutter/material.dart';

import 'main_content.dart';

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

class _MyHomePageState extends State<_MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _bottomController;

  List<Tab> bottomTab = <Tab>[
    Tab(
      icon: Icon(Icons.list),
      text: '列表',
    ),
    Tab(
      icon: Icon(Icons.account_box),
      text: '我的',
    )
  ];

//  AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
//    PageRoutes(pages: <String, Page<Object, dynamic>>{
//      'repo_list': RepoListPage(),
//    }),
//  ]);

  @override
  void initState() {
    super.initState();
    _bottomController = new TabController(
      vsync: this,
      length: bottomTab.length,
    );
  }

  @override
  void dispose() {
    _bottomController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      title: 'git',
//      home: routes.buildPage('repo_list', null),
//      onGenerateRoute: (RouteSettings settings) {
//        return MaterialPageRoute<Object>(builder: (BuildContext context) {
//          return routes.buildPage(settings.name, settings.arguments);
//        });
//      },
      title: 'git',
      home: Scaffold(
        body: TabBarView(
          controller: _bottomController,
          children: [
            MainContent(),
            Text("我的"),
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.blue,
          child: TabBar(
            tabs: bottomTab,
            controller: _bottomController,
          ),
        ),
      ),
    );
  }
}
