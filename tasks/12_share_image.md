---
title: Share Image
assignee: rmacklin
labels: unstarted
---

#### As a user I want to share an image with someone via email.

Acceptance criteria:
- [ ] There is a link to share an image.
- [ ] After clicking on this link, a bootstrap modal appears with a form to
  send the email.
- [ ] The modal closes and a success message is shown if the email was sent
  successfully.
- [ ] The user is alerted of errors if the operation was unsuccessful.

Discussion topics:
- [ ] How could we develop the front end and back end separately? (And why
  might that be a good idea?)
- [ ] How should we implement a non-CRUD action?
- [ ] What are the different types of errors we should handle?
- [ ] What is AJAX? What libraries can help us add AJAX to our Rails app?
- [ ] How should we go about sending emails from our Rails app?
- [ ] How could we show a preview of the image being shared in the modal?
- [ ] What are the implications of allowing users to send emails from our app?

Reference material:
- http://v4-alpha.getbootstrap.com/components/modal
- http://guides.rubyonrails.org/action_mailer_basics.html
- https://elements.heroku.com/addons/sendgrid
- https://devcenter.heroku.com/articles/sendgrid#ruby-rails
- https://github.com/rails/jquery-ujs/wiki

Dependencies:
- ES6 configuration
