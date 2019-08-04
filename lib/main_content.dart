import 'package:flutter/material.dart';
import 'repo_list/repo_list_page.dart';
import 'starred_list/starred_list_page.dart';

//首页上面TabView容器
class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _MainContentPage();
  }
}

class _MainContentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainContentPageState();
  }
}

class _MainContentPageState extends State<_MainContentPage>
    with SingleTickerProviderStateMixin {
  TabController _topController;
  List<Tab> _topTabs = <Tab>[
    Tab(
      icon: Icon(Icons.cloud_queue),
      text: 'repo',
    ),
    Tab(
      icon: Icon(Icons.text_rotation_angleup),
      text: 'second',
    )
  ];

  @override
  void initState() {
    super.initState();
    _topController = new TabController(
      vsync: this,
      length: _topTabs.length,
    );
  }

  @override
  void dispose() {
    _topController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new TabBar(
          controller: _topController,
          tabs: _topTabs,
        ),
      ),
      body: TabBarView(
        controller: _topController,
        children: [
          RepoListPage().buildPage(null),
          StarredListPage().buildPage(null),
        ],
      ),
    );
  }
}
