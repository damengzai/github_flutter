import 'package:fish_redux/fish_redux.dart';

import 'repo_owner_state.dart';

class RepoItemState implements Cloneable<RepoItemState> {
  int id; // 9910903,
  String node_id; // "MDEwOlJlcG9zaXRvcnk5OTEwOTAz",
  String name; // "android",
  String full_name; //": "damengzai/android",
  bool private; // false,
  RepoOwnerState owner;
  String html_url; // "https://github.com/damengzai/android",
  String description; // "finished android project",
  bool fork; // false,
  String url; // "https://api.github.com/repos/damengzai/android",
  String forks_url; // "https://api.github.com/repos/damengzai/android/forks",
  String keys_url;
  String collaborators_url;
  String teams_url; // "https://api.github.com/repos/damengzai/android/teams",
  String hooks_url; // "https://api.github.com/repos/damengzai/android/hooks",
  String issue_events_url;
  String events_url; // "https://api.github.com/repos/damengzai/android/events",
  String assignees_url;
  String branches_url;
  String tags_url; // "https://api.github.com/repos/damengzai/android/tags",
  String blobs_url;
  String git_tags_url;
  String git_refs_url;
  String trees_url;
  String statuses_url;
  String languages_url;
  String stargazers_url;
  String contributors_url;
  String subscribers_url;
  String subscription_url;
  String commits_url;
  String git_commits_url;
  String comments_url;
  String issue_comment_url;
  String contents_url;
  String compare_url;
  String merges_url; // "https://api.github.com/repos/damengzai/android/merges",
  String archive_url;
  String downloads_url;
  String issues_url;
  String pulls_url;
  String milestones_url;
  String notifications_url;
  String labels_url;
  String releases_url;
  String deployments_url;
  String created_at; // "2013-05-07T12:05:05Z",
  String updated_at; // "2014-05-04T06:19:17Z",
  String pushed_at; // "2013-05-07T12:07:25Z",
  String git_url; // "git://github.com/damengzai/android.git",
  String ssh_url; // "git@github.com:damengzai/android.git",
  String clone_url; // "https://github.com/damengzai/android.git",
  String svn_url; // "https://github.com/damengzai/android",
  String homepage; // null,
  int size; // 100,
  int stargazers_count; // 0,
  int watchers_count; // 0,
  String language; // null,
  bool has_issues; // true,
  bool has_projects; // true,
  bool has_downloads; // true,
  bool has_wiki; // true,
  bool has_pages; // false,
  int forks_count; // 0,
  String mirror_url; // null,
  bool archived; // false,
  bool disabled; // false,
  int open_issues_count; // 0,
  String license; // null,
  int forks; // 0,
  int open_issues; // 0,
  int watchers; // 0,
  String default_branch; // "master"

  RepoItemState(
      {this.id,
      this.node_id,
      this.name,
      this.full_name,
      this.private,
      this.owner,
      this.html_url,
      this.description,
      this.fork,
      this.keys_url,
      this.collaborators_url,
      this.stargazers_count});

  @override
  RepoItemState clone() {
    return RepoItemState()
      ..id = id
      ..node_id = node_id
      ..name = name
      ..full_name = full_name
      ..private = private
      ..owner = owner
      ..html_url = html_url
      ..description = description
      ..fork = fork
      ..keys_url = keys_url
      ..collaborators_url = collaborators_url
      ..teams_url = teams_url
      ..hooks_url = hooks_url
      ..issue_events_url = issue_events_url
      ..events_url = events_url
      ..assignees_url = assignees_url
      ..branches_url = branches_url
      ..tags_url = tags_url
      ..blobs_url = blobs_url
      ..git_tags_url = git_tags_url
      ..git_refs_url = git_refs_url
      ..trees_url = trees_url
      ..statuses_url = statuses_url
      ..languages_url = languages_url
      ..stargazers_url = stargazers_url
      ..contributors_url = contributors_url
      ..subscribers_url = subscribers_url
      ..subscription_url = subscription_url
      ..comments_url = comments_url
      ..git_commits_url = git_commits_url
      ..commits_url = commits_url
      ..issue_comment_url = issue_comment_url
      ..contents_url = contents_url
      ..compare_url = compare_url
      ..merges_url = merges_url
      ..archive_url = archive_url
      ..downloads_url = downloads_url
      ..issues_url = issues_url
      ..pulls_url = pulls_url
      ..milestones_url = milestones_url
      ..notifications_url = notifications_url
      ..labels_url = labels_url
      ..releases_url = releases_url
      ..deployments_url = deployments_url
      ..created_at = created_at
      ..updated_at = updated_at
      ..pushed_at = pushed_at
      ..git_url = git_url
      ..ssh_url = ssh_url
      ..clone_url = clone_url
      ..svn_url = svn_url
      ..homepage = homepage
      ..size = size
      ..stargazers_count = stargazers_count
      ..watchers_count = watchers_count
      ..languages_url = language
      ..has_issues = has_issues
      ..has_projects = has_projects
      ..has_downloads = has_downloads
      ..has_wiki = has_wiki
      ..has_pages = has_pages
      ..forks_count = forks_count
      ..mirror_url = mirror_url
      ..archived = archived
      ..disabled = disabled
      ..open_issues_count = open_issues_count
      ..license = license
      ..forks = forks
      ..open_issues = open_issues
      ..watchers = watchers
      ..default_branch = default_branch;
  }
}
