---
title: Deployment Environment
assignee: bboe
---

#### As a developer I want a continuous deployment environment setup for my new Rails application.

Acceptance criteria:
- [ ] The latest version of both Ruby and Rails are used both locally and on
  Heroku.
- [ ] [GitHub](https://github.com/AppFolioOnboarding) is used for source
  control.
- [ ] [CircleCI](https://circleci.com/) is used for Continuous Integration.
- [ ] Heroku is used to deploy the code with puma as the application server.
- [ ] The staging application automatically deploys whenever the master branch
  is updated and passes all tests.
- [ ] Pull requests are automatically deployed as review applications.
- [ ] The staging application deployment can be promoted to the production
  application deployment.
- [ ] Every available controller action has corresponding tests.
- [ ] [Pronto](https://github.com/mmozuras/pronto) is used to help with code
  style consistency.

Discussion Topics:
- [ ] Where can we discover how long it takes to return an HTTP response?
- [ ] Why shouldn't WEBrick be used as the application server?
- [ ] When should we commit our code?

References:
* https://rvm.io/rvm/install#try-out-your-new-rvm-installation
* http://guides.rubyonrails.org/getting_started.html
* http://guides.rubyonrails.org/testing.html#functional-tests-for-your-controllers
* https://devcenter.heroku.com/articles/getting-started-with-rails4
* https://devcenter.heroku.com/articles/pipelines
* https://github.com/bbatsov/ruby-style-guide
