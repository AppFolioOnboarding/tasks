---
title: Image Tags
assignee: shfung
---

#### As a user I want to add tags to images.

__Story__:

Our users are loving the ability to add images to our service. However, now
that there are more than a handful of images, it is apparent that we need some
way to filter images by certain categories. In order to do that, we first need
to label images in some way. It is time to add the ability for our users to tag
images when they add them.

__Acceptance criteria__:
- [ ] When I add a new image, there is a form field to add tags.
- [ ] After I've saved an image with tags, I see those tags displayed with the
  associated image.
- [ ] My application uses the acts-as-taggable-on gem to provide the tagging
  functionality.

__Reference material__:
- https://github.com/mbleigh/acts-as-taggable-on

__Dependencies__:
- Image Index
