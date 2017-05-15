---
title: Like Image
assignee: kkajla12 
labels: unstarted
---

#### As a logged in user I want to like an image.

__Story__:

What modern web service is complete without the ability to "like" something?
Well, many, but this is an image sharing site and our users demand to know how
many people have liked their image. Let's provide it to them!

__Acceptance criteria__:
- [ ] Each image on the index page has a "like" button.
- [ ] The button indicates how many users have liked that image.
- [ ] When you like an image the button state changes to a "liked" state.
- [ ] When you like an image the count of users who have liked that image is
  updated.
- [ ] If you have already liked an image, clicking the button "unlikes" the
  image.
- [ ] Liking/unliking is done via AJAX.

__Note__: Do not use an external gem to implement liking. You already have
experience using gem-backed models from acts_as_taggable_on, and since there
won't always be a gem to rely on, we want you to get experience implementing
more advanced models and relations on your own.

__Discussion topics__:
- [ ] What can we do to cache the likes count?
- [ ] How can we make our images relation for the index page include whether
  the image was liked by the current user?
- [ ] How can we develop the front end and back end separately?
- [ ] How can we reuse templates on the server and client?
- [ ] What are the different types of errors we should handle?

__Reference material__:
- http://guides.rubyonrails.org/association_basics.html#options-for-belongs-to-counter-cache
- http://guides.rubyonrails.org/active_record_querying.html#scopes
- https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template

__Dependencies__:
- Authorization
