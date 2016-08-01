---
title: Favorite Image
new_title: Like Image
assignee: rmacklin
labels: unstarted
---

#### As a logged in user I want to like an image.

Acceptance criteria:
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

Discussion topics:
- [ ] What can we do to cache the likes count?
- [ ] How can we make our images relation for the index page include whether
  the image was liked by the current user?
- [ ] How can we develop the front end and back end separately?
- [ ] How can we reuse templates on the server and client?
- [ ] What are the different types of errors we should handle?

Reference material:
- http://guides.rubyonrails.org/association_basics.html#counter-cache
- http://guides.rubyonrails.org/active_record_querying.html#scopes
- https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template

Dependencies:
- Authorization
