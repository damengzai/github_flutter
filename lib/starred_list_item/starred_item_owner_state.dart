import 'package:fish_redux/fish_redux.dart';

class StarredItemOwnerState extends Cloneable<StarredItemOwnerState> {
  String login; // "h2pl",
  int id; // 20679558,
  String node_id; // "MDQ6VXNlcjIwNjc5NTU4",
  String avatar_url; // "https://avatars3.githubusercontent.com/u/20679558?v=4",
  String gravatar_id; // "",
  String url; // "https://api.github.com/users/h2pl",
  String html_url; // "https://github.com/h2pl",
  String followers_url; // "https://api.github.com/users/h2pl/followers",
  String
      following_url; // "https://api.github.com/users/h2pl/following{/other_user}",
  String gists_url; // "https://api.github.com/users/h2pl/gists{/gist_id}",
  String
      starred_url; // "https://api.github.com/users/h2pl/starred{/owner}{/repo}",
  String
      subscriptions_url; // "https://api.github.com/users/h2pl/subscriptions",
  String organizations_url; // "https://api.github.com/users/h2pl/orgs",
  String repos_url; // "https://api.github.com/users/h2pl/repos",
  String events_url; // "https://api.github.com/users/h2pl/events{/privacy}",
  String
      received_events_url; // "https://api.github.com/users/h2pl/received_events",
  String type; // "User",
  bool site_admin; // false

  StarredItemOwnerState({
    this.login,
    this.id,
    this.node_id,
    this.avatar_url,
    this.gravatar_id,
    this.url,
    this.html_url,
    this.followers_url,
    this.following_url,
    this.gists_url,
    this.starred_url,
    this.subscriptions_url,
    this.organizations_url,
    this.repos_url,
    this.events_url,
    this.received_events_url,
    this.type,
    this.site_admin,
  });

  @override
  StarredItemOwnerState clone() {
    return StarredItemOwnerState()
      ..login
      ..id
      ..node_id
      ..avatar_url
      ..gravatar_id
      ..url
      ..html_url
      ..followers_url
      ..following_url
      ..gists_url
      ..starred_url
      ..subscriptions_url
      ..organizations_url
      ..repos_url
      ..events_url
      ..received_events_url
      ..type
      ..site_admin;
  }
}
