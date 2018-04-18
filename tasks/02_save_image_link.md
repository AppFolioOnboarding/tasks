---
title: Save Image Link
assignees:
  - HaominZhang
---

#### As a user I want to save a link to an image.

_Assignees_: @HaominZhang, @XanderStrike

__Story__:

Now that we have an awesome landing page for our users to experience it is time
to introduce our first feature! In general, we want to deliver value to our
customers as fast as possible. As a result, we have decided that we want our
users to be able to save links to images, and immediately see that we have
saved the URL to the image.

One could argue that simply saving the image, and not showing it, provides some
value. Yes, you could split this story here. However, because saving image URLs
and viewing those images are both relatively small additions that work well
together, it is acceptable to complete them together. Note, on the other hand,
that we do not yet want to implement the image index. Its addition adds too
much complexity, so we’ll save that for a future story.

In general, feature addition, or stories, should be split into the smallest
deliverable chunk that provides value to your users with the caveat that it
might make sense to combine two, sometimes more, tiny and related features into
a single story.

__Acceptance criteria__:
- [ ] The landing page links to the image link submission form.
- [ ] The link is entered through a form.
- [ ] After the form is saved, the link is persisted in the database.
- [ ] After the form is submitted, the user is redirected to a page displaying
  the image.
- [ ] I cannot successfully save an image with an invalid URL.
- [ ] An error message is associated with the appropriate input field on
  failure.

__Discussion Topic__:
- [ ] What is a valid image URL?

__Dependencies__:
- Deployment Environment

__Note__: Many image sharing sites will permit one to upload images, or
download images when provided a link. For this project we will only work with
the link, i.e., URL, to various images.

__Note__: To understand the database tables created by the `acts_as_taggable` gem, you may find it useful to use a program like the [DB Browser for SQLite](http://sqlitebrowser.org/).

