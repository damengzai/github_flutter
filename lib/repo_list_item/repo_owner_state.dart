import 'package:fish_redux/fish_redux.dart';

class RepoOwnerState implements Cloneable<RepoOwnerState> {
  String login; // "damengzai",
  int id; // 4232933,
  String node_id; // "MDQ6VXNlcjQyMzI5MzM=",
  String avatar_url; // "https://avatars1.githubusercontent.com/u/4232933?v=4",
  String gravatar_id; // "",
  String url; // "https://api.github.com/users/damengzai",
  String html_url; // "https://github.com/damengzai",
  String followers_url; // "https://api.github.com/users/damengzai/followers",
  String following_url;
  String gists_url; // "https://api.github.com/users/damengzai/gists{/gist_id}",
  String starred_url;
  String subscriptions_url;
  String organizations_url; // "https://api.github.com/users/damengzai/orgs",
  String repos_url; // "https://api.github.com/users/damengzai/repos",
  String events_url;
  String received_events_url;
  String type; // "User",
  bool site_admin; // false
  
  RepoOwnerState({
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
  RepoOwnerState clone() {
    return RepoOwnerState()
      ..login = login
      ..id = id
      ..node_id = node_id
      ..avatar_url = avatar_url
      ..gravatar_id = gravatar_id
      ..url = url
      ..html_url = html_url
      ..followers_url = followers_url
      ..following_url = following_url
      ..gists_url = gists_url
      ..starred_url = starred_url
      ..subscriptions_url = subscriptions_url
      ..organizations_url = organizations_url
      ..repos_url = repos_url
      ..events_url = events_url
      ..received_events_url = received_events_url
      ..type = type
      ..site_admin = site_admin;
  }
}
