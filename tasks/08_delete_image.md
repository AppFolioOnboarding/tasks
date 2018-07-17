---
title: Delete Image
assignees:
  - D-D-M
---

#### As a user I want to delete an image.

_Assignees_: @D-D-M, @lsq921224

__Story__:
Our users are awesome at adding images to our web service. Some of our users
add dozens in a single session. Occasionally, however, some users add the wrong
image, and would like a way to remove those images. Please provide our users
with the ability to delete images. Note that at this point we trust our users
not to abuse this feature and delete more images than they should.

__Acceptance criteria__:
- [ ] The user is prompted for confirmation prior to deletion. (Use javascript
  confirm() dialog)
- [ ] Deleted images are removed from the homepage.
- [ ] A flow test using page objects exists for the flow to create and
  subsequently delete an image.

__Dependencies__:
- Image Index

__Discussion topics__:
- [ ] What makes a good page object interface?

__Reference material__:
- https://developer.mozilla.org/en-US/docs/Web/API/Window/confirm
- https://github.com/appfolio/ae_page_objects
- http://martinfowler.com/bliki/PageObject.html
- https://sites.google.com/a/appfolio.com/eng/new-hire-resources/engineering-academy/ropes/image-sharing-project/flow-tests-with-page-objects
- https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings#javascript-dialogs

__Flow Test Info__:

Now that we have gotten some experience writing flow tests with Capybara,
we've noticed that these tests a) can be brittle in that changing selectors
requires updating many tests and b) use a low-level interface that can make
reading and writing flow tests more cumbersome than we'd like.

Fortunately, there is a better way: using page objects. With page objects,
we can create objects to encapsulate pages, elements, and actions that can be
taken in our application. We can design an interface for interacting with our
application that maps directly to how our users would think about interacting
with the application. This interface makes the tests easier to read, write,
and modify, and reduces the possibility of writing flaky or invalid tests.

Working on this story will be a bit different than your typical stories. We've
created a starting point for you in the form of a branch in your repo called
`flowTestsWithPageObjects`. This branch contains flow tests for adding images,
deleting images, and viewing images associated with a tag (in the
`images_crud_test.rb` file). These tests are fully written, but the page
objects they use are not. Your job is to fill in the page objects to make the
tests pass against your application.

The first step is to rebase the `flowTestsWithPageObjects` branch on top of
your updated master branch. Note that if you already have an
`images_crud_test.rb` file, there will be a merge conflict, so you may want to
rename your file first, rebase, make the tests on that branch pass, and then
migrate any other tests that were in your file to the page object style before
deleting your old test file.

Finally, there is a video to help you get started. You should watch this video
and also take a look at the [ae_page_objects readme](https://github.com/appfolio/ae_page_objects)
which will be an extremely helpful resource as you learn to write page objects. Both are linked in the
reference material below.

__Important Notes__:

Upgrade your Firefox to the latest version.

When dealing with javascript confirm() dialog in the flow test, this [reference](https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings#javascript-dialogs)
will be helpful.
