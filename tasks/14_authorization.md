---
title: Authorization
assignee: jyoder
labels: unstarted
---

#### As an application hoster I want to restrict some functionality to specific users.

__Story__:

As discussed previously, we want to prevent malicious users from destroying
content they did not add to our site. We have already built the foundation for
registering and authenticating users in our system. Now it is time to leverage
that authentication and provide restrictions based on the state of the
user.

The two primary states a user can belong to are unauthenticated, and
authenticated. With regard to individual images, the two substates an
authenticated user can belong to are owner or viewer, depending on whether or
not they added the image.

__Acceptance criteria__:
- [ ] Logged out users are restricted to read-only access.
- [ ] Links to non-read actions are not shown to logged out users.
- [ ] Attempting to access a page that requires authentication redirects you to
  the login page.
- [ ] Upon successful login, you are redirected back to where you had tried to
  navigate.
- [ ] Every image is associated with the user that added it.
- [ ] Only the user that added an image can delete that image.

__Discussion topics__:
- [ ] If we wanted to add a lot of authorization rules, how might we want to
  organize our code to keep it maintainable?

__Further reading__:
- https://github.com/elabs/pundit

__Dependencies__:
- Authentication
