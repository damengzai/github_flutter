import 'package:fish_redux/fish_redux.dart';

class UserInfoState implements Cloneable<UserInfoState> {
  String login;
  int id;
  String node_id;
  String avatar_url;
  String gravatar_id;
  String url;
  String html_url;
  String followers_url;
  String following_url;
  String gists_url;
  String starred_url;
  String subscriptions_url;
  String organizations_url;
  String repos_url;
  String events_url;
  String received_events_url;
  String type;
  bool site_admin;
  String name;
  String company;
  String blog;
  String location;
  String email;
  String hireable;
  String bio;
  int public_repos;
  int public_gists;
  int followers;
  int following;
  String created_at; //"2013-04-23T08:31:51Z",
  String updated_at; //"2019-05-17T02:34:08Z"

  @override
  UserInfoState clone() {
    return UserInfoState()
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
      ..site_admin = site_admin
      ..name = name
      ..company = company
      ..blog = blog
      ..location = location
      ..email = email
      ..hireable = hireable
      ..bio = bio
      ..public_repos = public_repos
      ..public_gists = public_gists
      ..followers = followers
      ..following = following
      ..created_at = created_at
      ..updated_at = updated_at;
  }

  @override
  String toString() {
    return 'login = $login '
        'id = $id '
        'node_id = $node_id '
        'avatar_url = $avatar_url '
        'gravatar_id = $gravatar_id '
        'url = $url '
        'html_url = $html_url '
        'followers_url = $followers_url '
        'following_url = $following_url '
        'gists_url = $gists_url '
        'starred_url = $starred_url '
        'subscriptions_url = $subscriptions_url '
        'organizations_url = $organizations_url '
        'repos_url = $repos_url '
        'events_url = $events_url '
        'received_events_url = $received_events_url '
        'type = $type '
        'site_admin = $site_admin '
        'name = $name '
        'company = $company '
        'blog = $blog '
        'location = $location '
        'email = $email '
        'hireable = $hireable '
        'bio = $bio '
        'public_repos = $public_repos '
        'public_gists = $public_gists '
        'followers = $followers '
        'following = $following '
        'created_at = $created_at '
        'updated_at = $updated_at';
  }
}
