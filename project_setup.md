## Project Setup

### Send invitation link

- The link https://classroom.github.com/assignment-invitations/cf5baec65a407a61e98221b759d25af0
- Once the individual accepts the invitation, Github will automatically create a new copy of the [base project](https://github.com/AppFolioOnboarding/base) named `image-sharer-<GitHub Username>`.

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
- Clone this repo [https://github.com/AppFolioOnboarding/tasks](https://github.com/AppFolioOnboarding/tasks) to your local machine.
- You may need to create a directory named `lists` in the root directory of the cloned `tasks` repository. You can place either a `fulltime.txt` or `interns.txt` file depending on the status of the individual(s). These files contain multiple image sharer repository names, newline separated. See the `update_repos.sh` script for more information
- Use `./update_repos.sh` to sync tasks to the target repo.
  - If they are interns, please use `./update_repos.sh interns`, which will use the `lists/interns` file and the `--no-assignees` flag, since the mentor should be the one handling the code reviews.

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

- SSH into CCI and generate an SSH keypair (how?), then copy the public key to your github Image Sharer repo, so that CCI can check out your Image Sharer repo from github. If you don't, you might see the error:

    Using SSH Config Dir /home/circleci/.ssh
    Cloning into '.'...
    Warning: Permanently added the RSA host key for IP address '140.82.114.3' to the list of known hosts.
    Enter passphrase for key '/home/circleci/.ssh/id_rsa': 

... and the CCI run will stall.

### Set up Heroku

- `"brew install heroku/brew/heroku"` if you haven't done it.
- Check pinned items in slack #ropes channel to find heroku login credentails. Log in at [https://id.heroku.com/login](https://id.heroku.com/login)
- Use `ropes_heroku.sh` script to create app on heroku(use the repo name as the APP_NAME)
- Connect your heroku to your github repo.

![heroku connect github](https://raw.githubusercontent.com/AppFolioOnboarding/tasks/master/images/heroku_github.png)

- Configure `REVIEW APPS`, `STAGING` and `PRODUCTION`
  - `REVIEW APPS` auto deploy when a new PR created and CI passed
  - `STAGE` auto deploy when master branch changed and CI passed

![heroku config apps](https://raw.githubusercontent.com/AppFolioOnboarding/tasks/master/images/heroku_apps.png)

- Provision PostgreSQL and/or Sendgrid resources for `STAGING` and `PRODUCTION`

![heroku config apps](https://raw.githubusercontent.com/AppFolioOnboarding/tasks/master/images/heroku_resources.png)
