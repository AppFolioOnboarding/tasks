---
title: Required Tag Association
assignees:
  - pololee
---

#### As a user I want all images to have at least one tag.

__Story__:

The tag feature has been a hit. Our users love being able to filter images by
cats, SR-71s, and "AppFolio tshirts" to name a few. In fact, we have discovered
that images without any tags receive significantly less views than those with
tags. As a result, we have decided to require all images to have at least one
tag.

__Acceptance criteria__:
- [ ] I cannot save an image without adding at least one tag.
- [ ] An error message is associated with the appropriate input field when a
tag is not provided.
- [ ] All images have at least one tag.

__Discussion Topic__:
- [ ] What do you do about existing images that have no tags? 
	- [ ] Hint: you should probably fix them somehow. You can't just throw them away, 
	and you shouldn't annoy your users by presenting them with validation errors 
	if they try to open or edit a tagless image.

__Dependencies__:
- Image Tags
- Refactor flow tests to use page objects
