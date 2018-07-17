---
title: Deployment Environment
assignees:
  - 
---

#### As a developer I want a continuous deployment environment setup for my new Rails application.

__Story__:

Hi! I’ve heard you want to build an image sharing website using
ruby-on-rails. That’s wonderful! You have quite the adventure ahead of you
while you build out this working site.

To help you get started, I have already created a source repository for
you. This repository, on GitHub, contains the source code, and the list of
issues, including this one, that you will work on as you build out the features
for your website.

While you build out features, you want to ensure you do not break
anything. Thus with each feature you write, you will also write the necessary
model, controller, and flow tests. While you should always run your tests
locally before committing code, we have configured CircleCI as our automated
continuous integration system; that is, CircleCI will run all the tests on a
branch whenever you push a modification to it on GitHub.

Finally, you have a complete deployment pipeline set up on Heroku. With this
pipeline, there are three steps used for testing your application. Review
applications are automatically created whenever you make a pull request. There
can be as many review applications as you have open pull requests. This step
enables you to perform quality assurance (QA) tests while you are developing a
feature. The second step, staging, is used to ensure no bugs are introduced as
the result of a feature branch merge into master. The staging server is as
close of a replica to your production server there is, so it provides a great
way to ensure that changes will not negatively impact your customers. The
staging server is automatically deployed whenever the master branch is updated
and the automated tests pass. The last step is production. This step contains
your production application, and the goal is for that server to have zero
unscheduled downtime – all of the other steps work toward that effort.

Please keep in mind that each feature delivers a modicum of value to either
your users, or to aid in your development of the website. You want to deliver
value to your users fast, so some features, like authentication, are saved
until your users really need them.

To begin with this story, please verify that things are set up for you by
checking off each item below. If anything does not appear to work, it’s up to
you to fix it and make it work.

I encourage you to read the discussion topics and keep them in mind when
working on the story. You should be able to provide answers to them when the
story is complete.

The references might provide insight into the discussion topics, help you
complete the story, or simply provide more information that you might be
interested in. It is not expected that you read through all the references --
you can if you want -- however, it might be a good idea to scan through them
before getting started with a story.

Happy coding!


__Acceptance criteria__:
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
- [ ] [Rubocop](https://github.com/bbatsov/rubocop) is used to help with code
  style consistency.

__Discussion Topics__:
- [ ] Where can we discover how long it takes to return an HTTP response?
- [ ] When should we commit our code?

__References__:
* https://rvm.io/rvm/install#try-out-your-new-rvm-installation
* http://guides.rubyonrails.org/getting_started.html
* http://guides.rubyonrails.org/testing.html#functional-tests-for-your-controllers
* https://devcenter.heroku.com/articles/getting-started-with-rails5
* https://devcenter.heroku.com/articles/pipelines
* https://github.com/bbatsov/ruby-style-guide
