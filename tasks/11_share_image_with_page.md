---
title: Share Image
assignees:
  - lsq921224
  - HaominZhang
---

#### As a user I want to share an image with someone via email.

__Story__:

This application is called Image Sharer. Sure, you can share images by adding
them to our web service, but how will people who do not know about this web
service be able to see those images? In phone calls with our customers we have
discovered that many of our users are manually emailing their friends links to
the images. That is awesome! We can make things more efficent for our users by
directly supporting sharing images through email.

__Acceptance criteria__:
- [ ] There is a link to share an image.
- [ ] After clicking on this link, a bootstrap modal appears with a form to
  send the email.
- [ ] The form has fields for the recipient's email and an optional message.
- [ ] The email we send has an HTML part and a text part.
- [ ] The email contains the image, the custom message if provided, and a link
  inviting the recipient to check out our application.
- [ ] The modal closes and a success message is shown if the email was sent
  successfully.
- [ ] The user is alerted of errors if the operation was unsuccessful.

__Note__: This story is large, so it makes sense to break the implementation
down into more manageable pieces (a la elephant carpaccio). Please start by
implementing a basic sharing feature that uses a new page (not a modal), and
open a PR for that. Then, once we've verified the simplified version is
working, refactor it to use a modal, and open a second PR for that. The
[video](https://sites.google.com/a/appfolio.com/eng/new-hire-resources/engineering-academy/ropes/image-sharing-project/basics-of-bootstrap-modals-js-and-ajax)
provides some background and code examples that will be really helpful for the
second PR, so it's worth watching (and following along) before you begin that
part.

__Discussion topics__:
- [ ] How could we develop the front end and back end separately? (And why
  might that be a good idea?)
- [ ] How should we implement a non-CRUD action?
- [ ] What are the different types of errors we should handle?
- [ ] What is AJAX? What libraries can help us add AJAX to our Rails app?
- [ ] How should we go about sending emails from our Rails app?
- [ ] How could we show a preview of the image being shared in the modal?
- [ ] What are the implications of allowing users to send emails from our app?

__Reference material__:
- http://guides.rubyonrails.org/action_mailer_basics.html
- https://elements.heroku.com/addons/sendgrid
- https://sendgrid.com/docs/Integrate/Frameworks/rubyonrails.html
- https://github.com/rails/jquery-ujs/wiki
- http://v4-alpha.getbootstrap.com/components/modal
- https://sites.google.com/a/appfolio.com/eng/new-hire-resources/engineering-academy/ropes/image-sharing-project/basics-of-bootstrap-modals-js-and-ajax

__Dependencies__:
- Image Index
- Refactor flow tests to use page objects
