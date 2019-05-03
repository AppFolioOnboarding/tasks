---
title: Deployment Environment
assignees:
  - pololee
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
- [ ] The landing page, `/`, provides some content.
- [ ] Every available controller action has corresponding tests.
- [ ] [CircleCI](https://circleci.com/) is used for Continuous Integration.
- [ ] [Rubocop](https://github.com/bbatsov/rubocop) is used to help with code
  style consistency.

__Discussion Topics__:
- [ ] Where can we discover how long it takes to return an HTTP response?
- [ ] When should we commit our code?

__References__:
* https://rvm.io/rvm/install#try-out-your-new-rvm-installation
* http://guides.rubyonrails.org/getting_started.html
* http://guides.rubyonrails.org/testing.html#functional-tests-for-your-controllers
* https://github.com/bbatsov/ruby-style-guide
