---
title: Share Image Part 2
assignees:
  - lsq921224
  - HaominZhang
---

#### As a user I want to share an image with someone via email. __(Part 2)__

__Story__:

Our users love sharing pictures of themselves with strangers on the internet!
To help them do this more efficiently, in this Story we'll present the user
with a modal window to share an image (instead of a separate "Share Image" page).

__Acceptance criteria__:
- [ ] There is a link to share an image.
- [ ] After clicking on this link, a bootstrap modal appears with a form to
  send the email. The form has the same fields as Part 1.
- [ ] After the user submits the form, the modal closes, revealing the original page.
- [ ] A flash message indicates whether the email was sent successfully.
- [ ] If the form contents are invalid, the modal stays open and displays the validation errors.


__Note__: The
[video](https://sites.google.com/a/appfolio.com/eng/new-hire-resources/engineering-academy/ropes/image-sharing-project/basics-of-bootstrap-modals-js-and-ajax)
provides some background and code examples that will be really helpful for this issue (Part 2),
so it's worth watching (and following along) before you begin.

__Discussion topics__:
- [ ] How could we develop the front end and back end separately? (And why
  might that be a good idea?)
- [ ] What is AJAX? What libraries can help us add AJAX to our Rails app?


__Reference material__:
- http://v4-alpha.getbootstrap.com/components/modal
- https://sites.google.com/a/appfolio.com/eng/new-hire-resources/engineering-academy/ropes/image-sharing-project/basics-of-bootstrap-modals-js-and-ajax

__Dependencies__:
- Share Image Part 1

