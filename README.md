# Onboarding Tasks

This repository contains the list of tasks to be completed by the new hires.

Each task is a markdown file contained in the tasks directory with a `yaml`
frontmatter (a format used by [jeykll](http://jekyllrb.com/docs/frontmatter/)).


## Task Frontmatter

The frontmatter of a `task.md` file can contain the following attributes:

* __title__: (required) Used as the title of the issue on GitHub. The title is used as the
  unique key when syncing updated tasks with existing issues.
* __assignee__: (optional) Assign or reassign the issue to the github username
  specified. Existing assignee will not be removed on sync if the field is not
  provided.
* __label__: (optional) Set the labels of the issue to this comma-separated
  string of issues. Existing labels will not be cleared on sync when the field
  is not provided.


## Synchronizing Tasks

Tasks should be synchronized using the `sync_issues` tool. Install via:

    gem install sync_issues

Then synchronize to one or more GitHub repositories via:

    sync_issues /path/to/tasks/directory bboe/repo1 appfolio/repo2

New issues will be created according to lexicographic filename order when an
issue doesn't already exist with a matching title as specified in the file's
frontmatter. Existing issues will be updated if necessary.
