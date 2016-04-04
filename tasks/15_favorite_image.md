---
title: Favorite Image
assignee: rmacklin
labels: unstarted
---

#### As a logged in user I want to favorite an image.

Acceptance criteria:
- [ ] Each image on the index page has a "favorite" button.
- [ ] The button indicates how many users have favorited that image.
- [ ] When you favorite an image the button state changes to a "favorited"
  state.
- [ ] When you favorite an image the count of users who have favorited that
  image is updated.
- [ ] If you have already favorited an image, clicking the button "unfavorites"
  the image.
- [ ] Favoriting/unfavoriting is done via AJAX.

Discussion topics:
- [ ] What can we do to cache the favorites count?
- [ ] How can we make our images relation for the index page include whether
  the image was favorited by the current user?
- [ ] How can we develop the front end and back end separately?
- [ ] How can we reuse templates on the server and client?
- [ ] What are the different types of errors we should handle?

Reference material:
- http://guides.rubyonrails.org/association_basics.html#counter-cache
- http://guides.rubyonrails.org/active_record_querying.html#scopes
- https://developer.mozilla.org/en-US/docs/Web/HTML/Element/template

Dependencies:
- Authorization
