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
	- [ ] Pretend this is a production system that has been running for years with thousands of users 
	and zillions of images. You can't just drop your production db and rebuild it. Your solution should consider the following points:
		- [ ] You can't just delete the tagless images.
		- [ ] You shouldn't annoy users	by presenting them with validation errors if they try to open or edit a tagless image.
		- [ ] If your solution modifies your production db, then your solution should be able to un-modify your production db 
			  if you decide to run an older version of your code on the production db. (Hint: what Rails mechanism performs
			  versioned db changes?)

__Dependencies__:
- Image Tags
- Refactor flow tests to use page objects
