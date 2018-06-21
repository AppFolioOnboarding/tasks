## Project Setup

### Send invitation link

- The link https://classroom.github.com/assignment-invitations/cf5baec65a407a61e98221b759d25af0
- Get the link and click accept. Github will auto create a new copy of [base project](https://github.com/AppFolioOnboarding/base)

### Configure the repo

- Add `Collborators & teams`
  - If they are fulltime employee, add `"mentors"` to teams.
  - If they are interns, ONLY add your mentor

![github add teams](https://raw.githubusercontent.com/AppFolioOnboarding/tasks/master/images/github_add_teams.png)

- Configure branch protection for `master`

![github master branch protection](https://raw.githubusercontent.com/AppFolioOnboarding/tasks/master/images/github_master_branch_protection.png)

### Sync tasks to the target repo

- `"gem install sync_issues"` if haven't done it.  
  Learn more about `sync_issues` (https://github.com/bboe/sync_issues)
- clone this repo [https://github.com/AppFolioOnboarding/tasks](https://github.com/AppFolioOnboarding/tasks) to your local.
- use `"update_repos.sh"` to sync tasks to the target repo. (Check the script to see how to use it.)  
  - If they are interns, please use `"--no-assignees"` flag since the mentor should be the one handling the code reviews.

### Set up CircleCI

- use `"Log In with Github"` to log in [https://circleci.com/vcs-authorize/](https://circleci.com/vcs-authorize/)
- make sure you pick `AppFolioOnboarding` after logged in.

![circleci](https://raw.githubusercontent.com/AppFolioOnboarding/tasks/master/images/circleci.png)

- it may take a while for your repo to show on CircleCI. Click `Set Up Project` once your repo showed up.

![circle ci setup project](https://raw.githubusercontent.com/AppFolioOnboarding/tasks/master/images/circleci_setup_project.png)

- On the `Set Up Project`, just click `Start building`. We have already set up the yml file in the repo.

![circle ci start building](https://raw.githubusercontent.com/AppFolioOnboarding/tasks/master/images/circleci_start_building.png)

- Click `BUILDS` on the sidebar, you should be able to see your build.

![circle ci builds](https://raw.githubusercontent.com/AppFolioOnboarding/tasks/master/images/circleci_builds.png)

### Set up Heroku

- `"brew install heroku/brew/heroku"` if you haven't done it.
- Check pinned items in slack #ropes channel to find heroku login credentails. Log in at [https://id.heroku.com/login](https://id.heroku.com/login)
- use `ropes_heroku.sh` script to create app on heroku(use the repo name as the APP_NAME)
- connect your heroku to your github repo.

![heroku connect github](https://raw.githubusercontent.com/AppFolioOnboarding/tasks/master/images/heroku_github.png)

- config `REVIEW APPS`, `STAGE` and `PRODUCTION`
  - `REVIEW APPS` auto deploy when a new PR created and CI passed
  - `STAGE` auto deploy when master branch changed and CI passed

![heroku config apps](https://raw.githubusercontent.com/AppFolioOnboarding/tasks/master/images/heroku_apps.png)

