import 'package:fish_redux/fish_redux.dart';
import 'starred_item_owner_state.dart';

class StarredItemState implements Cloneable<StarredItemState> {
  int id; //124853301,
  String node_id; //"MDEwOlJlcG9zaXRvcnkxMjQ4NTMzMDE=",
  String name; // "leetcode",
  String full_name; // "h2pl/leetcode",
  bool private; // false,
  StarredItemOwnerState owner;
  String html_url; // "https://github.com/h2pl/leetcode",
  String
      description; // "参考@CyC2018的leetcode题解。Java工程师LeetCode刷题必备。主要根据LeetCode的tag进行模块划分，每部分都选取了比较经典的题目，题目以medium和easy为主，少量hard题目。",
  bool fork; // false,
  String url; // "https://api.github.com/repos/h2pl/leetcode",
  String forks_url; // "https://api.github.com/repos/h2pl/leetcode/forks",
  String
      keys_url; // "https://api.github.com/repos/h2pl/leetcode/keys{/key_id}",
  String
      collaborators_url; // "https://api.github.com/repos/h2pl/leetcode/collaborators{/collaborator}",
  String teams_url; // "https://api.github.com/repos/h2pl/leetcode/teams",
  String hooks_url; // "https://api.github.com/repos/h2pl/leetcode/hooks",
  String
      issue_events_url; // "https://api.github.com/repos/h2pl/leetcode/issues/events{/number}",
  String events_url; // "https://api.github.com/repos/h2pl/leetcode/events",
  String
      assignees_url; // "https://api.github.com/repos/h2pl/leetcode/assignees{/user}",
  String
      branches_url; // "https://api.github.com/repos/h2pl/leetcode/branches{/branch}",
  String tags_url; // "https://api.github.com/repos/h2pl/leetcode/tags",
  String
      blobs_url; // "https://api.github.com/repos/h2pl/leetcode/git/blobs{/sha}",
  String
      git_tags_url; // "https://api.github.com/repos/h2pl/leetcode/git/tags{/sha}",
  String
      git_refs_url; // "https://api.github.com/repos/h2pl/leetcode/git/refs{/sha}",
  String
      trees_url; // "https://api.github.com/repos/h2pl/leetcode/git/trees{/sha}",
  String
      statuses_url; // "https://api.github.com/repos/h2pl/leetcode/statuses/{sha}",
  String
      languages_url; // "https://api.github.com/repos/h2pl/leetcode/languages",
  String
      stargazers_url; // "https://api.github.com/repos/h2pl/leetcode/stargazers",
  String
      contributors_url; // "https://api.github.com/repos/h2pl/leetcode/contributors",
  String
      subscribers_url; // "https://api.github.com/repos/h2pl/leetcode/subscribers",
  String
      subscription_url; // "https://api.github.com/repos/h2pl/leetcode/subscription",
  String
      commits_url; // "https://api.github.com/repos/h2pl/leetcode/commits{/sha}",
  String
      git_commits_url; // "https://api.github.com/repos/h2pl/leetcode/git/commits{/sha}",
  String
      comments_url; // "https://api.github.com/repos/h2pl/leetcode/comments{/number}",
  String
      issue_comment_url; // "https://api.github.com/repos/h2pl/leetcode/issues/comments{/number}",
  String
      contents_url; // "https://api.github.com/repos/h2pl/leetcode/contents/{+path}",
  String
      compare_url; // "https://api.github.com/repos/h2pl/leetcode/compare/{base}...{head}",
  String merges_url; // "https://api.github.com/repos/h2pl/leetcode/merges",
  String
      archive_url; // "https://api.github.com/repos/h2pl/leetcode/{archive_format}{/ref}",
  String
      downloads_url; // "https://api.github.com/repos/h2pl/leetcode/downloads",
  String
      issues_url; // "https://api.github.com/repos/h2pl/leetcode/issues{/number}",
  String
      pulls_url; // "https://api.github.com/repos/h2pl/leetcode/pulls{/number}",
  String
      milestones_url; // "https://api.github.com/repos/h2pl/leetcode/milestones{/number}",
  String
      notifications_url; // "https://api.github.com/repos/h2pl/leetcode/notifications{?since,all,participating}",
  String
      labels_url; // "https://api.github.com/repos/h2pl/leetcode/labels{/name}",
  String
      releases_url; // "https://api.github.com/repos/h2pl/leetcode/releases{/id}",
  String
      deployments_url; // "https://api.github.com/repos/h2pl/leetcode/deployments",
  String created_at; // "2018-03-12T07:56:03Z",
  String updated_at; // "2019-08-03T15:39:38Z",
  String pushed_at; // "2018-07-20T04:06:14Z",
  String git_url; // "git://github.com/h2pl/leetcode.git",
  String ssh_url; // "git@github.com:h2pl/leetcode.git",
  String clone_url; // "https://github.com/h2pl/leetcode.git",
  String svn_url; // "https://github.com/h2pl/leetcode",
  String homepage; // "https://github.com/h2pl/leetcode",
  int size; // 196,
  int stargazers_count; // 335,
  int watchers_coun; //: 335,
  String language; // "Java",
  bool has_issues; // true,
  bool has_projects; // true,
  bool has_downloads; // true,
  bool has_wiki; // true,
  bool has_pages; // false,
  int forks_count; // 145,
  String mirror_url; // null,
  bool archived; // false,
  bool disabled; // false,
  int open_issues_count; // 1,
  String license; // null,
  int forks; // 145,
  int open_issues; // 1,
  int watchers; // 335,
  String default_branch; // "master"

  StarredItemState({
    this.id,
    this.node_id,
    this.name,
    this.full_name,
    this.private,
    this.owner,
    this.html_url,
    this.description,
    this.fork,
    this.url,
    this.forks_url,
    this.keys_url,
    this.collaborators_url,
    this.teams_url,
    this.hooks_url,
    this.issue_events_url,
    this.events_url,
    this.assignees_url,
    this.branches_url,
    this.tags_url,
    this.blobs_url,
    this.git_tags_url,
    this.git_refs_url,
    this.trees_url,
    this.statuses_url,
    this.languages_url,
    this.stargazers_url,
    this.contributors_url,
    this.subscribers_url,
    this.subscription_url,
    this.commits_url,
    this.git_commits_url,
    this.comments_url,
    this.issue_comment_url,
    this.contents_url,
    this.compare_url,
    this.merges_url,
    this.archive_url,
    this.downloads_url,
    this.issues_url,
    this.pulls_url,
    this.milestones_url,
    this.notifications_url,
    this.labels_url,
    this.releases_url,
    this.deployments_url,
    this.created_at,
    this.updated_at,
    this.pushed_at,
    this.git_url,
    this.ssh_url,
    this.clone_url,
    this.svn_url,
    this.homepage,
    this.size,
    this.stargazers_count,
    this.watchers_coun,
    this.language,
    this.has_issues,
    this.has_projects,
    this.has_downloads,
    this.has_wiki,
    this.has_pages,
    this.forks_count,
    this.mirror_url,
    this.archived,
    this.disabled,
    this.open_issues_count,
    this.license,
    this.forks,
    this.open_issues,
    this.watchers,
    this.default_branch,
  });

  @override
  StarredItemState clone() {
    return StarredItemState()
      ..id
      ..node_id
      ..name
      ..full_name
      ..private
      ..owner
      ..html_url
      ..description
      ..fork
      ..url
      ..forks_url
      ..keys_url
      ..collaborators_url
      ..teams_url
      ..hooks_url
      ..issue_events_url
      ..events_url
      ..assignees_url
      ..branches_url
      ..tags_url
      ..blobs_url
      ..git_tags_url
      ..git_refs_url
      ..trees_url
      ..statuses_url
      ..languages_url
      ..stargazers_url
      ..contributors_url
      ..subscribers_url
      ..subscription_url
      ..commits_url
      ..git_commits_url
      ..comments_url
      ..issue_comment_url
      ..contents_url
      ..compare_url
      ..merges_url
      ..archive_url
      ..downloads_url
      ..issues_url
      ..pulls_url
      ..milestones_url
      ..notifications_url
      ..labels_url
      ..releases_url
      ..deployments_url
      ..created_at
      ..updated_at
      ..pushed_at
      ..git_url
      ..ssh_url
      ..clone_url
      ..svn_url
      ..homepage
      ..size
      ..stargazers_count
      ..watchers_coun
      ..language
      ..has_issues
      ..has_projects
      ..has_downloads
      ..has_wiki
      ..has_pages
      ..forks_count
      ..mirror_url
      ..archived
      ..disabled
      ..open_issues_count
      ..license
      ..forks
      ..open_issues
      ..watchers
      ..default_branch;
  }
}
