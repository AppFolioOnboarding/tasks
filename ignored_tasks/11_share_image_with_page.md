---
title: Share Image Part 1
assignees:
  - lsq921224
  - HaominZhang
---

#### As a user I want to share an image with someone via email. __(Part 1)__

__Story__:

This application is called Image Sharer. Sure, you can share images by adding
them to our web service, but how will people who do not know about this web
service be able to see those images? In phone calls with our customers we have
discovered that many of our users are manually emailing their friends links to
the images. That is awesome! We can make things more efficent for our users by
directly supporting sharing images through email.

__Acceptance criteria__:
- [ ] There is a link to share an image.
- [ ] After clicking on this link, the user is sent to a "Send Image" page with a form to
  send the email.
- [ ] The form has fields for the recipient's email and an optional message.
- [ ] The email we send has an HTML part and a text part.
- [ ] The email contains the image, the custom message (if provided), and a link
  inviting the recipient to check out our application.
- [ ] After submitting the form to send the email, the user is sent to
      the index page.
- [ ] A flash message indicates whether the email was sent successfully.


__Discussion topics__:
- [ ] How could we develop the front end and back end separately? (And why
  might that be a good idea?)
- [ ] How should we implement a non-CRUD action?
- [ ] What are the different types of errors we should handle?
- [ ] How could we show a preview of the image being shared in the modal?
- [ ] How should we go about sending emails from our Rails app?
- [ ] What are the implications of allowing users to send emails from our app?

__Reference material__:
- http://guides.rubyonrails.org/action_mailer_basics.html
- https://elements.heroku.com/addons/sendgrid
- https://sendgrid.com/docs/Integrate/Frameworks/rubyonrails.html
- https://github.com/rails/jquery-ujs/wiki

__Dependencies__:
- Image Index
- Refactor flow tests to use page objects
