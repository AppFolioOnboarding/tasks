---
title: Image URL Validation
assignee: XanderStrike
labels: unstarted
---

#### As a user I want to be prevented from submitting invalid image URLs.

__Story__:

We quickly got up to speed providing our users the ability to add images to our
service. How cool are all the images they are adding? But wait, what are all
these broken image placeholders? We would like to avoid that. In order to do so
we will need to add some validation to our model in order to increase the
chance that the data submitted actually corresponds to an image URL.

__Acceptance criteria__:
- [ ] I cannot successfully save an image with an invalid URL.
- [ ] An error message is associated with the appropriate input field on
  failure.

__Discussion Topic__:
- [ ] What is a valid image URL?

__Dependencies__:
- Save Image Link
