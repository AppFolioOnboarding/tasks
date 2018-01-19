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
* __labels__:(optional) When provided and the issue does not have any labels
  this list of labels will be added to the issue. Labels will be dynamically
  created with the default grey color if they don't already exist on the
  repository. If you desire to reset the labels for each issue, run
  ``sync_issues`` with the ``--reset-labels`` flag.


## Synchronizing Tasks

Tasks should be synchronized using the `sync_issues` tool. Install via:

    gem install sync_issues

Then synchronize to one or more GitHub repositories via:

    sync_issues /path/to/tasks/directory bboe/repo1 appfolio/repo2

New issues will be created according to lexicographic filename order when an
issue doesn't already exist with a matching title as specified in the file's
frontmatter. Existing issues will be updated if necessary.

## How to update dependencies graph

on Mac
```
brew install graphviz
dot -Tpng dependencies.dot -o dependencies.png
```
