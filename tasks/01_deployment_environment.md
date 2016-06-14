---
title: Deployment Environment
assignee: bboe
labels: in progress
---

#### As a developer I want a continuous deployment environment setup for my new Rails application.

Acceptance criteria:
- [ ] [GitHub](https://github.com/AppFolioOnboarding) is used for source
  control.
- [ ] The project's version of both Ruby and Rails are used both locally and on
  Heroku.
- [ ] The landing page, `/`, provides some content.
- [ ] Every available controller action has corresponding tests.
- [ ] [CircleCI](https://circleci.com/) is used for Continuous Integration.
- [ ] Heroku is used to deploy the application.
- [ ] Pull requests are automatically deployed as review applications.
- [ ] The staging application automatically deploys whenever the master branch
  is updated.
- [ ] The staging application automatically deploys only after all tests pass
  on CircleCI.
- [ ] The staging application deployment can be promoted to the production
  application deployment.
- [ ] [Pronto](https://github.com/mmozuras/pronto) is used to help with code
  style consistency.

Discussion Topics:
- [ ] Where can we discover how long it takes to return an HTTP response?
- [ ] When should we commit our code?

References:
* https://rvm.io/rvm/install#try-out-your-new-rvm-installation
* http://guides.rubyonrails.org/getting_started.html
* http://guides.rubyonrails.org/testing.html#functional-tests-for-your-controllers
* https://devcenter.heroku.com/articles/getting-started-with-rails4
* https://devcenter.heroku.com/articles/pipelines
* https://github.com/bbatsov/ruby-style-guide
